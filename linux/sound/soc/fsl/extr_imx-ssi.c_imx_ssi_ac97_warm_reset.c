
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
struct imx_ssi {int (* ac97_warm_reset ) (struct snd_ac97*) ;} ;


 struct imx_ssi* ac97_ssi ;
 int imx_ssi_ac97_read (struct snd_ac97*,int ) ;
 int stub1 (struct snd_ac97*) ;

__attribute__((used)) static void imx_ssi_ac97_warm_reset(struct snd_ac97 *ac97)
{
 struct imx_ssi *imx_ssi = ac97_ssi;

 if (imx_ssi->ac97_warm_reset)
  imx_ssi->ac97_warm_reset(ac97);


 imx_ssi_ac97_read(ac97, 0);
}
