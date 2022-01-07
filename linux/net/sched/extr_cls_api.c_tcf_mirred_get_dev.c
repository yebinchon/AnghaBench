
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {TYPE_1__* ops; } ;
struct flow_action_entry {scalar_t__ dev; scalar_t__ destructor_priv; int destructor; } ;
struct TYPE_2__ {scalar_t__ (* get_dev ) (struct tc_action const*,int *) ;} ;


 scalar_t__ stub1 (struct tc_action const*,int *) ;

__attribute__((used)) static void tcf_mirred_get_dev(struct flow_action_entry *entry,
          const struct tc_action *act)
{






}
