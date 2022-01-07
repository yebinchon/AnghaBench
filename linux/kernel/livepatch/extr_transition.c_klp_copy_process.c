
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int patch_state; } ;
struct TYPE_2__ {int patch_state; } ;


 TYPE_1__* current ;

void klp_copy_process(struct task_struct *child)
{
 child->patch_state = current->patch_state;


}
