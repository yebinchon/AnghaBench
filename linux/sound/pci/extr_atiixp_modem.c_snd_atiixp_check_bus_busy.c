
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 int ATI_REG_CMD_MODEM_RECEIVE_EN ;
 int ATI_REG_CMD_MODEM_SEND1_EN ;
 unsigned int ATI_REG_IER_MODEM_SET_BUS_BUSY ;
 int CMD ;
 int IER ;
 int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_update (struct atiixp_modem*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void snd_atiixp_check_bus_busy(struct atiixp_modem *chip)
{
 unsigned int bus_busy;
 if (atiixp_read(chip, CMD) & (ATI_REG_CMD_MODEM_SEND1_EN |
          ATI_REG_CMD_MODEM_RECEIVE_EN))
  bus_busy = ATI_REG_IER_MODEM_SET_BUS_BUSY;
 else
  bus_busy = 0;
 atiixp_update(chip, IER, ATI_REG_IER_MODEM_SET_BUS_BUSY, bus_busy);
}
