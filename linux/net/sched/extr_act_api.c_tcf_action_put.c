
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int dummy; } ;


 int __tcf_action_put (struct tc_action*,int) ;

__attribute__((used)) static int tcf_action_put(struct tc_action *p)
{
 return __tcf_action_put(p, 0);
}
