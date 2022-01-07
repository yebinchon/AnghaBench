
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ id; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {struct fsi_priv fsib; struct fsi_priv fsia; } ;


 struct fsi_master* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static struct fsi_priv *fsi_get_priv_frm_dai(struct snd_soc_dai *dai)
{
 struct fsi_master *master = snd_soc_dai_get_drvdata(dai);

 if (dai->id == 0)
  return &master->fsia;
 else
  return &master->fsib;
}
