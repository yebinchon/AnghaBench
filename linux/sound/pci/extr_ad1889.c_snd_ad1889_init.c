
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1889 {int dummy; } ;


 int AD_DMA_DISR ;
 int AD_DMA_DISR_PMAE ;
 int AD_DMA_DISR_PTAE ;
 int AD_DS_CCS ;
 int AD_DS_CCS_CLKEN ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_writel (struct snd_ad1889*,int ,int) ;
 int ad1889_writew (struct snd_ad1889*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
snd_ad1889_init(struct snd_ad1889 *chip)
{
 ad1889_writew(chip, AD_DS_CCS, AD_DS_CCS_CLKEN);
 ad1889_readw(chip, AD_DS_CCS);

 usleep_range(10000, 11000);


 ad1889_writel(chip, AD_DMA_DISR, AD_DMA_DISR_PMAE | AD_DMA_DISR_PTAE);

 return 0;
}
