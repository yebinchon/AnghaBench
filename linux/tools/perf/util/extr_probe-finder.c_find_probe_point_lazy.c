
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_finder {TYPE_2__* pev; int lcache; int fname; int cu_die; } ;
struct TYPE_3__ {int lazy_line; } ;
struct TYPE_4__ {TYPE_1__ point; } ;
typedef int Dwarf_Die ;


 char* cu_get_comp_dir (int *) ;
 int die_walk_lines (int *,int ,struct probe_finder*) ;
 int find_lazy_match_lines (int ,char*,int ) ;
 int free (char*) ;
 int get_real_path (int ,char const*,char**) ;
 scalar_t__ intlist__empty (int ) ;
 int pr_warning (char*) ;
 int probe_point_lazy_walker ;

__attribute__((used)) static int find_probe_point_lazy(Dwarf_Die *sp_die, struct probe_finder *pf)
{
 int ret = 0;
 char *fpath;

 if (intlist__empty(pf->lcache)) {
  const char *comp_dir;

  comp_dir = cu_get_comp_dir(&pf->cu_die);
  ret = get_real_path(pf->fname, comp_dir, &fpath);
  if (ret < 0) {
   pr_warning("Failed to find source file path.\n");
   return ret;
  }


  ret = find_lazy_match_lines(pf->lcache, fpath,
         pf->pev->point.lazy_line);
  free(fpath);
  if (ret <= 0)
   return ret;
 }

 return die_walk_lines(sp_die, probe_point_lazy_walker, pf);
}
