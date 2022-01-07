
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num; int list; } ;
struct snd_soc_card {int num_rtd; int rtd_list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void soc_add_pcm_runtime(struct snd_soc_card *card,
  struct snd_soc_pcm_runtime *rtd)
{

 list_add_tail(&rtd->list, &card->rtd_list);
 rtd->num = card->num_rtd;
 card->num_rtd++;
}
