
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct symbol {int end; int start; } ;
struct map_symbol {struct symbol* sym; struct map* map; } ;
struct map {scalar_t__ (* unmap_ip ) (struct map*,int ) ;int (* map_ip ) (struct map*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ addr; int outside; int offset_avail; scalar_t__ offset; int sym; } ;
struct ins_operands {char const* raw; TYPE_2__ target; void* raw_comment; } ;
struct TYPE_3__ {char comment_char; } ;
struct arch {TYPE_1__ objdump; } ;
struct addr_map_symbol {scalar_t__ addr; int sym; struct map* map; } ;


 scalar_t__ map__objdump_2mem (struct map*,scalar_t__) ;
 scalar_t__ map__rip_2objdump (struct map*,int ) ;
 scalar_t__ map_groups__find_ams (struct addr_map_symbol*) ;
 void* strchr (char const*,char) ;
 void* strtoull (char const*,int *,int) ;
 scalar_t__ stub1 (struct map*,int ) ;
 scalar_t__ stub2 (struct map*,int ) ;
 int stub3 (struct map*,scalar_t__) ;
 char* validate_comma (char const*,struct ins_operands*) ;

__attribute__((used)) static int jump__parse(struct arch *arch, struct ins_operands *ops, struct map_symbol *ms)
{
 struct map *map = ms->map;
 struct symbol *sym = ms->sym;
 struct addr_map_symbol target = {
  .map = map,
 };
 const char *c = strchr(ops->raw, ',');
 u64 start, end;

 ops->raw_comment = strchr(ops->raw, arch->objdump.comment_char);
 c = validate_comma(c, ops);
 if (c++ != ((void*)0)) {
  ops->target.addr = strtoull(c, ((void*)0), 16);
  if (!ops->target.addr) {
   c = strchr(c, ',');
   c = validate_comma(c, ops);
   if (c++ != ((void*)0))
    ops->target.addr = strtoull(c, ((void*)0), 16);
  }
 } else {
  ops->target.addr = strtoull(ops->raw, ((void*)0), 16);
 }

 target.addr = map__objdump_2mem(map, ops->target.addr);
 start = map->unmap_ip(map, sym->start),
 end = map->unmap_ip(map, sym->end);

 ops->target.outside = target.addr < start || target.addr > end;
 if (map_groups__find_ams(&target) == 0 &&
     map__rip_2objdump(target.map, map->map_ip(target.map, target.addr)) == ops->target.addr)
  ops->target.sym = target.sym;

 if (!ops->target.outside) {
  ops->target.offset = target.addr - start;
  ops->target.offset_avail = 1;
 } else {
  ops->target.offset_avail = 0;
 }

 return 0;
}
