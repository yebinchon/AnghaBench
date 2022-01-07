
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {int device; } ;
struct snd_intelhad {TYPE_2__* jack; TYPE_1__* card_ctx; } ;
typedef int hdmi_str ;
struct TYPE_4__ {struct snd_intelhad* private_data; } ;
struct TYPE_3__ {int card; } ;


 int SND_JACK_AVOUT ;
 int snd_jack_new (int ,char*,int ,TYPE_2__**,int,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int had_create_jack(struct snd_intelhad *ctx,
      struct snd_pcm *pcm)
{
 char hdmi_str[32];
 int err;

 snprintf(hdmi_str, sizeof(hdmi_str),
   "HDMI/DP,pcm=%d", pcm->device);

 err = snd_jack_new(ctx->card_ctx->card, hdmi_str,
      SND_JACK_AVOUT, &ctx->jack,
      1, 0);
 if (err < 0)
  return err;
 ctx->jack->private_data = ctx;
 return 0;
}
