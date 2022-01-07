
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; int * type; } ;
struct ac97_controller {int nr; int parent; TYPE_1__ adap; int controllers; } ;


 int GFP_KERNEL ;
 int ac97_adapter_idr ;
 int ac97_adapter_type ;
 int ac97_controllers ;
 int ac97_controllers_mutex ;
 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_name (int ) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 int idr_alloc (int *,struct ac97_controller*,int ,int ,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int ac97_add_adapter(struct ac97_controller *ac97_ctrl)
{
 int ret;

 mutex_lock(&ac97_controllers_mutex);
 ret = idr_alloc(&ac97_adapter_idr, ac97_ctrl, 0, 0, GFP_KERNEL);
 ac97_ctrl->nr = ret;
 if (ret >= 0) {
  dev_set_name(&ac97_ctrl->adap, "ac97-%d", ret);
  ac97_ctrl->adap.type = &ac97_adapter_type;
  ac97_ctrl->adap.parent = ac97_ctrl->parent;
  ret = device_register(&ac97_ctrl->adap);
  if (ret)
   put_device(&ac97_ctrl->adap);
 }
 if (!ret)
  list_add(&ac97_ctrl->controllers, &ac97_controllers);
 mutex_unlock(&ac97_controllers_mutex);

 if (!ret)
  dev_dbg(&ac97_ctrl->adap, "adapter registered by %s\n",
   dev_name(ac97_ctrl->parent));
 return ret;
}
