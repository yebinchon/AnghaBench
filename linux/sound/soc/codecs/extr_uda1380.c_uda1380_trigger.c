
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda1380_priv {int work; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int R14_SILENCE ;




 int UDA1380_MIXER ;
 int schedule_work (int *) ;
 struct uda1380_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int uda1380_read_reg_cache (struct snd_soc_component*,int ) ;
 int uda1380_write_reg_cache (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int uda1380_trigger(struct snd_pcm_substream *substream, int cmd,
  struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct uda1380_priv *uda1380 = snd_soc_component_get_drvdata(component);
 int mixer = uda1380_read_reg_cache(component, UDA1380_MIXER);

 switch (cmd) {
 case 129:
 case 130:
  uda1380_write_reg_cache(component, UDA1380_MIXER,
     mixer & ~R14_SILENCE);
  schedule_work(&uda1380->work);
  break;
 case 128:
 case 131:
  uda1380_write_reg_cache(component, UDA1380_MIXER,
     mixer | R14_SILENCE);
  schedule_work(&uda1380->work);
  break;
 }
 return 0;
}
