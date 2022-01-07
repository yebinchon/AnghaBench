
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct fsi_priv {int dummy; } ;


 int fsi_clk_invalid (struct fsi_priv*) ;
 struct fsi_priv* fsi_get_priv (struct snd_pcm_substream*) ;

__attribute__((used)) static int fsi_dai_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct fsi_priv *fsi = fsi_get_priv(substream);

 fsi_clk_invalid(fsi);

 return 0;
}
