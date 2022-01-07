
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usb_substream {TYPE_3__* str_pd; TYPE_2__* dev; TYPE_1__* stream; } ;
struct TYPE_6__ {int pd_id; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int chip; } ;


 int dev_err (int *,char*,int ,int,int) ;
 int snd_usb_power_domain_set (int ,TYPE_3__*,int) ;

__attribute__((used)) static int snd_usb_pcm_change_state(struct snd_usb_substream *subs, int state)
{
 int ret;

 if (!subs->str_pd)
  return 0;

 ret = snd_usb_power_domain_set(subs->stream->chip, subs->str_pd, state);
 if (ret < 0) {
  dev_err(&subs->dev->dev,
   "Cannot change Power Domain ID: %d to state: %d. Err: %d\n",
   subs->str_pd->pd_id, state, ret);
  return ret;
 }

 return 0;
}
