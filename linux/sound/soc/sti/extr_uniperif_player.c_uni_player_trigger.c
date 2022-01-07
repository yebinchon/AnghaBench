
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniperif {int dummy; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;



 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int uni_player_resume (struct uniperif*) ;
 int uni_player_start (struct uniperif*) ;
 int uni_player_stop (struct uniperif*) ;

__attribute__((used)) static int uni_player_trigger(struct snd_pcm_substream *substream,
         int cmd, struct snd_soc_dai *dai)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);
 struct uniperif *player = priv->dai_data.uni;

 switch (cmd) {
 case 129:
  return uni_player_start(player);
 case 128:
  return uni_player_stop(player);
 case 130:
  return uni_player_resume(player);
 default:
  return -EINVAL;
 }
}
