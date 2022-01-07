
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_priv {scalar_t__ inuse; } ;
struct snd_soc_dai {size_t id; } ;
struct snd_pcm_substream {int dummy; } ;


 struct ssi_priv* ssi_cpu_data ;

__attribute__((used)) static void ssi_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct ssi_priv *ssi = &ssi_cpu_data[dai->id];

 ssi->inuse = 0;
}
