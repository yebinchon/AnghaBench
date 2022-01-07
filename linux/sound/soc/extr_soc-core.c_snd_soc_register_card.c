
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dpcm_lock; int pcm_mutex; int dapm_mutex; int mutex; scalar_t__ instantiated; scalar_t__ num_rtd; int dobj_list; int dapm_dirty; int rtd_list; int dai_link_list; int list; int component_dev_list; int aux_comp_list; int dapm_list; int paths; int widgets; int dev; int name; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (int ,struct snd_soc_card*) ;
 int mutex_init (int *) ;
 int snd_soc_bind_card (struct snd_soc_card*) ;
 int spin_lock_init (int *) ;

int snd_soc_register_card(struct snd_soc_card *card)
{
 if (!card->name || !card->dev)
  return -EINVAL;

 dev_set_drvdata(card->dev, card);

 INIT_LIST_HEAD(&card->widgets);
 INIT_LIST_HEAD(&card->paths);
 INIT_LIST_HEAD(&card->dapm_list);
 INIT_LIST_HEAD(&card->aux_comp_list);
 INIT_LIST_HEAD(&card->component_dev_list);
 INIT_LIST_HEAD(&card->list);
 INIT_LIST_HEAD(&card->dai_link_list);
 INIT_LIST_HEAD(&card->rtd_list);
 INIT_LIST_HEAD(&card->dapm_dirty);
 INIT_LIST_HEAD(&card->dobj_list);

 card->num_rtd = 0;
 card->instantiated = 0;
 mutex_init(&card->mutex);
 mutex_init(&card->dapm_mutex);
 mutex_init(&card->pcm_mutex);
 spin_lock_init(&card->dpcm_lock);

 return snd_soc_bind_card(card);
}
