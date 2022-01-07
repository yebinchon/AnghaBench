
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* map; } ;
struct hist_entry {TYPE_2__ ms; } ;
struct dso {int dummy; } ;
struct TYPE_3__ {struct dso const* dso; } ;


 int HIST_FILTER__DSO ;

__attribute__((used)) static int hist_entry__dso_filter(struct hist_entry *he, int type, const void *arg)
{
 const struct dso *dso = arg;

 if (type != HIST_FILTER__DSO)
  return -1;

 return dso && (!he->ms.map || he->ms.map->dso != dso);
}
