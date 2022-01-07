
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ module_id; scalar_t__ instance_id; } ;
struct skl_module_pin {TYPE_1__ id; } ;
struct skl_module_inst_id {scalar_t__ module_id; scalar_t__ instance_id; } ;


 int EINVAL ;

__attribute__((used)) static int skl_get_queue_index(struct skl_module_pin *mpin,
    struct skl_module_inst_id id, int max)
{
 int i;

 for (i = 0; i < max; i++) {
  if (mpin[i].id.module_id == id.module_id &&
   mpin[i].id.instance_id == id.instance_id)
   return i;
 }

 return -EINVAL;
}
