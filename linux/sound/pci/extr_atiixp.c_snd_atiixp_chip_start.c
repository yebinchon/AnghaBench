
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 unsigned int ATI_REG_CMD_BURST_EN ;
 int ATI_REG_CMD_SPDF_THRESHOLD_SHIFT ;
 int ATI_REG_IER_IN_XRUN_EN ;
 int ATI_REG_IER_IO_STATUS_EN ;
 int ATI_REG_IER_OUT_XRUN_EN ;
 int ATI_REG_IER_SPDF_STATUS_EN ;
 int ATI_REG_IER_SPDF_XRUN_EN ;
 unsigned int ATI_REG_SPDF_CMD_LFSR ;
 unsigned int ATI_REG_SPDF_CMD_SINGLE_CH ;
 int CMD ;
 int IER ;
 int ISR ;
 int SPDF_CMD ;
 unsigned int atiixp_read (struct atiixp*,int ) ;
 int atiixp_write (struct atiixp*,int ,int) ;

__attribute__((used)) static int snd_atiixp_chip_start(struct atiixp *chip)
{
 unsigned int reg;


 reg = atiixp_read(chip, CMD);
 reg |= 0x02 << ATI_REG_CMD_SPDF_THRESHOLD_SHIFT;
 reg |= ATI_REG_CMD_BURST_EN;
 atiixp_write(chip, CMD, reg);

 reg = atiixp_read(chip, SPDF_CMD);
 reg &= ~(ATI_REG_SPDF_CMD_LFSR|ATI_REG_SPDF_CMD_SINGLE_CH);
 atiixp_write(chip, SPDF_CMD, reg);


 atiixp_write(chip, ISR, 0xffffffff);

 atiixp_write(chip, IER,
       ATI_REG_IER_IO_STATUS_EN |
       ATI_REG_IER_IN_XRUN_EN |
       ATI_REG_IER_OUT_XRUN_EN |
       ATI_REG_IER_SPDF_XRUN_EN |
       ATI_REG_IER_SPDF_STATUS_EN);
 return 0;
}
