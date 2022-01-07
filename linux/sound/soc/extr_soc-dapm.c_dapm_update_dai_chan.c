
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dapm_widget {int id; int channel; TYPE_1__* dapm; } ;
struct snd_soc_dapm_path {TYPE_3__* sink; TYPE_2__* source; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,char*,int ,int ) ;


 int soc_dapm_connect_path (struct snd_soc_dapm_path*,int,char*) ;

__attribute__((used)) static int dapm_update_dai_chan(struct snd_soc_dapm_path *p,
    struct snd_soc_dapm_widget *w,
    int channels)
{
 switch (w->id) {
 case 128:
 case 129:
  break;
 default:
  return 0;
 }

 dev_dbg(w->dapm->dev, "%s DAI route %s -> %s\n",
  w->channel < channels ? "Connecting" : "Disconnecting",
  p->source->name, p->sink->name);

 if (w->channel < channels)
  soc_dapm_connect_path(p, 1, "dai update");
 else
  soc_dapm_connect_path(p, 0, "dai update");

 return 0;
}
