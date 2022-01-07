
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int PLLCTL_B ;
 int PLLCTL_FD ;
 int PLLCTL_RD ;
 int PLLCTL_SRC ;
 int PLLSTAT_B ;
 int PLLSTAT_CCS ;
 int PLLSTAT_CFD ;
 int PLLSTAT_CRD ;
 int PLLSTAT_PD ;
 int PLL_CTL ;
 int PLL_ENB ;
 int PLL_STAT ;
 int dev_alert (int ,char*) ;
 scalar_t__ get_field (unsigned int,int ) ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int msleep (int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw_pll_init(struct hw *hw, unsigned int rsr)
{
 unsigned int pllenb;
 unsigned int pllctl;
 unsigned int pllstat;
 int i;

 pllenb = 0xB;
 hw_write_20kx(hw, PLL_ENB, pllenb);
 pllctl = 0x20C00000;
 set_field(&pllctl, PLLCTL_B, 0);
 set_field(&pllctl, PLLCTL_FD, 48000 == rsr ? 16 - 4 : 147 - 4);
 set_field(&pllctl, PLLCTL_RD, 48000 == rsr ? 1 - 1 : 10 - 1);
 hw_write_20kx(hw, PLL_CTL, pllctl);
 msleep(40);

 pllctl = hw_read_20kx(hw, PLL_CTL);
 set_field(&pllctl, PLLCTL_FD, 48000 == rsr ? 16 - 2 : 147 - 2);
 hw_write_20kx(hw, PLL_CTL, pllctl);
 msleep(40);

 for (i = 0; i < 1000; i++) {
  pllstat = hw_read_20kx(hw, PLL_STAT);
  if (get_field(pllstat, PLLSTAT_PD))
   continue;

  if (get_field(pllstat, PLLSTAT_B) !=
     get_field(pllctl, PLLCTL_B))
   continue;

  if (get_field(pllstat, PLLSTAT_CCS) !=
     get_field(pllctl, PLLCTL_SRC))
   continue;

  if (get_field(pllstat, PLLSTAT_CRD) !=
     get_field(pllctl, PLLCTL_RD))
   continue;

  if (get_field(pllstat, PLLSTAT_CFD) !=
     get_field(pllctl, PLLCTL_FD))
   continue;

  break;
 }
 if (i >= 1000) {
  dev_alert(hw->card->dev,
     "PLL initialization failed!!!\n");
  return -EBUSY;
 }

 return 0;
}
