
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct symbol {int name; int start; } ;
struct probe_trace_point {int retprobe; scalar_t__ offset; scalar_t__ symbol; int module; scalar_t__ address; } ;
struct perf_probe_point {scalar_t__ function; scalar_t__ offset; int retprobe; } ;
struct map {scalar_t__ (* unmap_ip ) (struct map*,int ) ;} ;


 int ENOENT ;
 int ENOMEM ;
 struct map* dso__new_map (int ) ;
 int host_machine ;
 scalar_t__ kernel_get_symbol_address_by_name (scalar_t__,scalar_t__*,int,int) ;
 struct symbol* machine__find_kernel_symbol (int ,scalar_t__,struct map**) ;
 struct symbol* map__find_symbol (struct map*,scalar_t__) ;
 int map__put (struct map*) ;
 scalar_t__ strdup (int ) ;
 scalar_t__ stub1 (struct map*,int ) ;

__attribute__((used)) static int find_perf_probe_point_from_map(struct probe_trace_point *tp,
       struct perf_probe_point *pp,
       bool is_kprobe)
{
 struct symbol *sym = ((void*)0);
 struct map *map = ((void*)0);
 u64 addr = tp->address;
 int ret = -ENOENT;

 if (!is_kprobe) {
  map = dso__new_map(tp->module);
  if (!map)
   goto out;
  sym = map__find_symbol(map, addr);
 } else {
  if (tp->symbol && !addr) {
   if (kernel_get_symbol_address_by_name(tp->symbol,
      &addr, 1, 0) < 0)
    goto out;
  }
  if (addr) {
   addr += tp->offset;
   sym = machine__find_kernel_symbol(host_machine, addr, &map);
  }
 }

 if (!sym)
  goto out;

 pp->retprobe = tp->retprobe;
 pp->offset = addr - map->unmap_ip(map, sym->start);
 pp->function = strdup(sym->name);
 ret = pp->function ? 0 : -ENOMEM;

out:
 if (map && !is_kprobe) {
  map__put(map);
 }

 return ret;
}
