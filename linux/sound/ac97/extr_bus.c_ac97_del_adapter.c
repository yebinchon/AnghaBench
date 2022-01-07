
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int adap; int controllers; } ;


 int ac97_controllers_mutex ;
 int ac97_ctrl_codecs_unregister (struct ac97_controller*) ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ac97_del_adapter(struct ac97_controller *ac97_ctrl)
{
 mutex_lock(&ac97_controllers_mutex);
 ac97_ctrl_codecs_unregister(ac97_ctrl);
 list_del(&ac97_ctrl->controllers);
 mutex_unlock(&ac97_controllers_mutex);

 device_unregister(&ac97_ctrl->adap);
}
