
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi_dev {TYPE_1__* card; int flags; } ;
struct snd_seq_port_subscribe {int dummy; } ;
struct TYPE_2__ {int module; } ;


 int SNDRV_VIRMIDI_SUBSCRIBE ;
 int module_put (int ) ;

__attribute__((used)) static int snd_virmidi_unsubscribe(void *private_data,
       struct snd_seq_port_subscribe *info)
{
 struct snd_virmidi_dev *rdev;

 rdev = private_data;
 rdev->flags &= ~SNDRV_VIRMIDI_SUBSCRIBE;
 module_put(rdev->card->module);
 return 0;
}
