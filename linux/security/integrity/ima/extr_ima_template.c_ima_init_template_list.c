
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* builtin_templates ;
 int defined_templates ;
 int list_add_tail_rcu (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int template_list ;

void ima_init_template_list(void)
{
 int i;

 if (!list_empty(&defined_templates))
  return;

 spin_lock(&template_list);
 for (i = 0; i < ARRAY_SIZE(builtin_templates); i++) {
  list_add_tail_rcu(&builtin_templates[i].list,
      &defined_templates);
 }
 spin_unlock(&template_list);
}
