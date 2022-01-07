
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int dummy; } ;


 int tcf_action_destroy (struct tc_action**,int) ;

__attribute__((used)) static int tcf_action_destroy_1(struct tc_action *a, int bind)
{
 struct tc_action *actions[] = { a, ((void*)0) };

 return tcf_action_destroy(actions, bind);
}
