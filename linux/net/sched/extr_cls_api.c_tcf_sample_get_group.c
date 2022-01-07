
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_action {TYPE_1__* ops; } ;
struct TYPE_4__ {int psample_group; } ;
struct flow_action_entry {TYPE_2__ sample; int destructor_priv; int destructor; } ;
struct TYPE_3__ {int (* get_psample_group ) (struct tc_action const*,int *) ;} ;


 int stub1 (struct tc_action const*,int *) ;

__attribute__((used)) static void tcf_sample_get_group(struct flow_action_entry *entry,
     const struct tc_action *act)
{





}
