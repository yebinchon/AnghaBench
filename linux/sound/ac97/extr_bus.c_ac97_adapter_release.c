
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ac97_controller {int parent; int adap; int nr; } ;


 int ac97_adapter_idr ;
 int dev_dbg (int *,char*,int ) ;
 int dev_name (int ) ;
 int idr_remove (int *,int ) ;
 struct ac97_controller* to_ac97_controller (struct device*) ;

__attribute__((used)) static void ac97_adapter_release(struct device *dev)
{
 struct ac97_controller *ac97_ctrl;

 ac97_ctrl = to_ac97_controller(dev);
 idr_remove(&ac97_adapter_idr, ac97_ctrl->nr);
 dev_dbg(&ac97_ctrl->adap, "adapter unregistered by %s\n",
  dev_name(ac97_ctrl->parent));
}
