
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;


 int sst_fill_ssp_defaults (struct snd_soc_dai*) ;
 int sst_handle_vb_timer (struct snd_soc_dai*,int) ;

__attribute__((used)) static int sst_enable_ssp(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 int ret = 0;

 if (!dai->active) {
  ret = sst_handle_vb_timer(dai, 1);
  sst_fill_ssp_defaults(dai);
 }
 return ret;
}
