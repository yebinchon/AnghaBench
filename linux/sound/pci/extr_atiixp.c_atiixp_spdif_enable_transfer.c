
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 unsigned int ATI_REG_CMD_SPDF_OUT_EN ;
 int CMD ;
 unsigned int atiixp_read (struct atiixp*,int ) ;
 int atiixp_write (struct atiixp*,int ,unsigned int) ;

__attribute__((used)) static void atiixp_spdif_enable_transfer(struct atiixp *chip, int on)
{
 unsigned int data;
 data = atiixp_read(chip, CMD);
 if (on)
  data |= ATI_REG_CMD_SPDF_OUT_EN;
 else
  data &= ~ATI_REG_CMD_SPDF_OUT_EN;
 atiixp_write(chip, CMD, data);
}
