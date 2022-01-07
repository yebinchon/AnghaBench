
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ac97_controller {TYPE_1__** codecs; } ;
struct TYPE_2__ {int dev; int * ac97_ctrl; } ;


 int AC97_BUS_MAX_CODECS ;
 int ac97_unbound_ctrl ;
 int device_unregister (int *) ;

__attribute__((used)) static void ac97_ctrl_codecs_unregister(struct ac97_controller *ac97_ctrl)
{
 int i;

 for (i = 0; i < AC97_BUS_MAX_CODECS; i++)
  if (ac97_ctrl->codecs[i]) {
   ac97_ctrl->codecs[i]->ac97_ctrl = &ac97_unbound_ctrl;
   device_unregister(&ac97_ctrl->codecs[i]->dev);
  }
}
