
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int dummy; } ;


 int ac97_del_adapter (struct ac97_controller*) ;

void snd_ac97_controller_unregister(struct ac97_controller *ac97_ctrl)
{
 ac97_del_adapter(ac97_ctrl);
}
