
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct omap_mcpdm {int dn_rx_offset; } ;


 int MCPDM_DNOFST_RX1 (int ) ;
 int MCPDM_DNOFST_RX2 (int ) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (int ) ;

void omap_mcpdm_configure_dn_offsets(struct snd_soc_pcm_runtime *rtd,
        u8 rx1, u8 rx2)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(rtd->cpu_dai);

 mcpdm->dn_rx_offset = MCPDM_DNOFST_RX1(rx1) | MCPDM_DNOFST_RX2(rx2);
}
