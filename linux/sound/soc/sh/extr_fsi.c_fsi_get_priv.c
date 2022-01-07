
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct fsi_priv {int dummy; } ;


 int fsi_get_dai (struct snd_pcm_substream*) ;
 struct fsi_priv* fsi_get_priv_frm_dai (int ) ;

__attribute__((used)) static struct fsi_priv *fsi_get_priv(struct snd_pcm_substream *substream)
{
 return fsi_get_priv_frm_dai(fsi_get_dai(substream));
}
