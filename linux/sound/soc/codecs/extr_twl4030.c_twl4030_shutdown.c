
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_priv {scalar_t__ configured; struct snd_pcm_substream* master_substream; struct snd_pcm_substream* slave_substream; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; TYPE_1__* runtime; } ;
struct TYPE_2__ {int channels; } ;


 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int twl4030_tdm_enable (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void twl4030_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);

 if (twl4030->master_substream == substream)
  twl4030->master_substream = twl4030->slave_substream;

 twl4030->slave_substream = ((void*)0);



 if (!twl4030->master_substream)
  twl4030->configured = 0;
  else if (!twl4030->master_substream->runtime->channels)
  twl4030->configured = 0;


 if (substream->runtime->channels == 4)
  twl4030_tdm_enable(component, substream->stream, 0);
}
