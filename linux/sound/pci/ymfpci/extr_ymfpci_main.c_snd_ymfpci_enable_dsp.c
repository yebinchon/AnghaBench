
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int dummy; } ;


 int YDSXGR_CONFIG ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;

__attribute__((used)) static void snd_ymfpci_enable_dsp(struct snd_ymfpci *chip)
{
 snd_ymfpci_writel(chip, YDSXGR_CONFIG, 0x00000001);
}
