
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hist_entry {TYPE_3__* branch_info; } ;
struct dso {int dummy; } ;
struct TYPE_5__ {TYPE_1__* map; } ;
struct TYPE_6__ {TYPE_2__ to; } ;
struct TYPE_4__ {struct dso const* dso; } ;


 int HIST_FILTER__DSO ;

__attribute__((used)) static int hist_entry__dso_to_filter(struct hist_entry *he, int type,
         const void *arg)
{
 const struct dso *dso = arg;

 if (type != HIST_FILTER__DSO)
  return -1;

 return dso && (!he->branch_info || !he->branch_info->to.map ||
         he->branch_info->to.map->dso != dso);
}
