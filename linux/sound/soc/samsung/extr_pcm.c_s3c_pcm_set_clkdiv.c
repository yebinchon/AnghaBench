
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct s3c_pcm_info {int sclk_per_fs; } ;


 int EINVAL ;

 struct s3c_pcm_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int s3c_pcm_set_clkdiv(struct snd_soc_dai *cpu_dai,
      int div_id, int div)
{
 struct s3c_pcm_info *pcm = snd_soc_dai_get_drvdata(cpu_dai);

 switch (div_id) {
 case 128:
  pcm->sclk_per_fs = div;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
