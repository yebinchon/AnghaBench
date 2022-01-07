
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_priv {int inuse; } ;
struct snd_soc_dai {size_t id; } ;
struct snd_pcm_substream {int dummy; } ;


 int EBUSY ;
 int pr_debug (char*) ;
 struct ssi_priv* ssi_cpu_data ;

__attribute__((used)) static int ssi_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct ssi_priv *ssi = &ssi_cpu_data[dai->id];
 if (ssi->inuse) {
  pr_debug("ssi: already in use!\n");
  return -EBUSY;
 } else
  ssi->inuse = 1;
 return 0;
}
