
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct unwind_info {int machine; int thread; } ;
struct addr_location {TYPE_1__* map; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dso; } ;
typedef int Dwarf_Word ;
typedef scalar_t__ Dwarf_Addr ;


 int PERF_RECORD_MISC_USER ;
 int dso__data_read_addr (int ,TYPE_1__*,int ,scalar_t__,int *,int) ;
 int pr_debug (char*,unsigned long) ;
 int thread__find_map (int ,int ,scalar_t__,struct addr_location*) ;

__attribute__((used)) static int access_dso_mem(struct unwind_info *ui, Dwarf_Addr addr,
     Dwarf_Word *data)
{
 struct addr_location al;
 ssize_t size;

 if (!thread__find_map(ui->thread, PERF_RECORD_MISC_USER, addr, &al)) {
  pr_debug("unwind: no map for %lx\n", (unsigned long)addr);
  return -1;
 }

 if (!al.map->dso)
  return -1;

 size = dso__data_read_addr(al.map->dso, al.map, ui->machine,
       addr, (u8 *) data, sizeof(*data));

 return !(size == sizeof(*data));
}
