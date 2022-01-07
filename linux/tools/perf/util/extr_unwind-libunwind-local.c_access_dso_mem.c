
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unw_word_t ;
typedef int u8 ;
struct unwind_info {int machine; } ;
struct map {int dso; } ;
typedef int ssize_t ;


 int dso__data_read_addr (int ,struct map*,int ,scalar_t__,int *,int) ;
 struct map* find_map (scalar_t__,struct unwind_info*) ;
 int pr_debug (char*,unsigned long) ;

__attribute__((used)) static int access_dso_mem(struct unwind_info *ui, unw_word_t addr,
     unw_word_t *data)
{
 struct map *map;
 ssize_t size;

 map = find_map(addr, ui);
 if (!map) {
  pr_debug("unwind: no map for %lx\n", (unsigned long)addr);
  return -1;
 }

 if (!map->dso)
  return -1;

 size = dso__data_read_addr(map->dso, map, ui->machine,
       addr, (u8 *) data, sizeof(*data));

 return !(size == sizeof(*data));
}
