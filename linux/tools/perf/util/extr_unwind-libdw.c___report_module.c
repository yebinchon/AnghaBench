
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct unwind_info {int dwfl; int thread; } ;
struct dso {scalar_t__ long_name; scalar_t__ symsrc_filename; int short_name; } ;
struct addr_location {TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ pgoff; struct dso* dso; } ;
typedef int Dwfl_Module ;
typedef scalar_t__ Dwarf_Addr ;


 int PERF_RECORD_MISC_USER ;
 int * dwfl_addrmodule (int ,int ) ;
 int dwfl_module_info (int *,int *,scalar_t__*,int *,int *,int *,int *,int *) ;
 int * dwfl_report_elf (int ,int ,scalar_t__,int,scalar_t__,int) ;
 int thread__find_symbol (int ,int ,int ,struct addr_location*) ;

__attribute__((used)) static int __report_module(struct addr_location *al, u64 ip,
       struct unwind_info *ui)
{
 Dwfl_Module *mod;
 struct dso *dso = ((void*)0);




 thread__find_symbol(ui->thread, PERF_RECORD_MISC_USER, ip, al);

 if (al->map)
  dso = al->map->dso;

 if (!dso)
  return 0;

 mod = dwfl_addrmodule(ui->dwfl, ip);
 if (mod) {
  Dwarf_Addr s;

  dwfl_module_info(mod, ((void*)0), &s, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  if (s != al->map->start - al->map->pgoff)
   mod = 0;
 }

 if (!mod)
  mod = dwfl_report_elf(ui->dwfl, dso->short_name,
          (dso->symsrc_filename ? dso->symsrc_filename : dso->long_name), -1, al->map->start - al->map->pgoff,
          0);

 return mod && dwfl_addrmodule(ui->dwfl, ip) == mod ? 0 : -1;
}
