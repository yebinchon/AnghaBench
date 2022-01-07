
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_finder {int addr; int cu_die; int lno; int fname; TYPE_2__* pev; } ;
struct find_scope_param {int found; int * die_mem; int diff; int line; int file; int function; } ;
struct TYPE_3__ {int function; } ;
struct TYPE_4__ {TYPE_1__ point; } ;
typedef int Dwarf_Die ;


 int INT_MAX ;
 int cu_walk_functions_at (int *,int ,int ,struct find_scope_param*) ;
 int find_best_scope_cb ;

__attribute__((used)) static Dwarf_Die *find_best_scope(struct probe_finder *pf, Dwarf_Die *die_mem)
{
 struct find_scope_param fsp = {
  .function = pf->pev->point.function,
  .file = pf->fname,
  .line = pf->lno,
  .diff = INT_MAX,
  .die_mem = die_mem,
  .found = 0,
 };

 cu_walk_functions_at(&pf->cu_die, pf->addr, find_best_scope_cb, &fsp);

 return fsp.found ? die_mem : ((void*)0);
}
