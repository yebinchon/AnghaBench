
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 int ATI_REG_CMD_MODEM_IN_DMA_EN ;
 int CMD ;
 int atiixp_update (struct atiixp_modem*,int ,int ,int ) ;

__attribute__((used)) static void atiixp_in_enable_dma(struct atiixp_modem *chip, int on)
{
 atiixp_update(chip, CMD, ATI_REG_CMD_MODEM_IN_DMA_EN,
        on ? ATI_REG_CMD_MODEM_IN_DMA_EN : 0);
}
