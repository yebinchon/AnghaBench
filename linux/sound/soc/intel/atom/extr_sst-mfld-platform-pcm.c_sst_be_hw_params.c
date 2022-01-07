
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; int name; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int send_ssp_cmd (struct snd_soc_dai*,int ,int) ;

__attribute__((used)) static int sst_be_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 int ret = 0;

 if (dai->active == 1)
  ret = send_ssp_cmd(dai, dai->name, 1);
 return ret;
}
