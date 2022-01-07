
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {TYPE_1__* ops; } ;
struct TYPE_2__ {size_t (* get_fill_size ) (struct tc_action const*) ;} ;


 size_t stub1 (struct tc_action const*) ;
 size_t tcf_action_shared_attrs_size (struct tc_action const*) ;

__attribute__((used)) static size_t tcf_action_fill_size(const struct tc_action *act)
{
 size_t sz = tcf_action_shared_attrs_size(act);

 if (act->ops->get_fill_size)
  return act->ops->get_fill_size(act) + sz;
 return sz;
}
