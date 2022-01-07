
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;


 int fh ;
 int imx_pcm_free (struct snd_pcm*) ;
 int mxc_set_irq_fiq (int ,int ) ;
 int release_fiq (int *) ;
 int ssi_irq ;

__attribute__((used)) static void imx_pcm_fiq_free(struct snd_pcm *pcm)
{
 mxc_set_irq_fiq(ssi_irq, 0);
 release_fiq(&fh);
 imx_pcm_free(pcm);
}
