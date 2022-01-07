
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniperif {scalar_t__ state; int irq_lock; int * substream; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 scalar_t__ UNIPERIF_STATE_STOPPED ;
 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uni_player_stop (struct uniperif*) ;

__attribute__((used)) static void uni_player_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);
 struct uniperif *player = priv->dai_data.uni;
 unsigned long flags;

 spin_lock_irqsave(&player->irq_lock, flags);
 if (player->state != UNIPERIF_STATE_STOPPED)

  uni_player_stop(player);

 player->substream = ((void*)0);
 spin_unlock_irqrestore(&player->irq_lock, flags);
}
