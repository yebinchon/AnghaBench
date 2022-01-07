
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct machine {TYPE_1__ dsos; } ;
typedef int FILE ;


 size_t __dsos__fprintf_buildid (int *,int *,int (*) (struct dso*,int),int) ;

size_t machine__fprintf_dsos_buildid(struct machine *m, FILE *fp,
         bool (skip)(struct dso *dso, int parm), int parm)
{
 return __dsos__fprintf_buildid(&m->dsos.head, fp, skip, parm);
}
