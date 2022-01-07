
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int name; int active; } ;
struct snd_pcm_substream {int dummy; } ;


 int send_ssp_cmd (struct snd_soc_dai*,int ,int ) ;
 int sst_handle_vb_timer (struct snd_soc_dai*,int) ;

__attribute__((used)) static void sst_disable_ssp(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 if (!dai->active) {
  send_ssp_cmd(dai, dai->name, 0);
  sst_handle_vb_timer(dai, 0);
 }
}
