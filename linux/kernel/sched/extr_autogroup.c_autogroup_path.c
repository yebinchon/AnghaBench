
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_group {TYPE_1__* autogroup; } ;
struct TYPE_2__ {int id; } ;


 int snprintf (char*,int,char*,char*,int ) ;
 int task_group_is_autogroup (struct task_group*) ;

int autogroup_path(struct task_group *tg, char *buf, int buflen)
{
 if (!task_group_is_autogroup(tg))
  return 0;

 return snprintf(buf, buflen, "%s-%ld", "/autogroup", tg->autogroup->id);
}
