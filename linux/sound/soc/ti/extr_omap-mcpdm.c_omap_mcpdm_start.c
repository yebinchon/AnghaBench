
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_mcpdm {TYPE_1__* config; } ;
struct TYPE_2__ {int link_mask; } ;


 int MCPDM_REG_CTRL ;
 int MCPDM_SW_DN_RST ;
 int MCPDM_SW_UP_RST ;
 int omap_mcpdm_read (struct omap_mcpdm*,int ) ;
 int omap_mcpdm_write (struct omap_mcpdm*,int ,int) ;

__attribute__((used)) static void omap_mcpdm_start(struct omap_mcpdm *mcpdm)
{
 u32 ctrl = omap_mcpdm_read(mcpdm, MCPDM_REG_CTRL);
 u32 link_mask = mcpdm->config[0].link_mask | mcpdm->config[1].link_mask;

 ctrl |= (MCPDM_SW_DN_RST | MCPDM_SW_UP_RST);
 omap_mcpdm_write(mcpdm, MCPDM_REG_CTRL, ctrl);

 ctrl |= link_mask;
 omap_mcpdm_write(mcpdm, MCPDM_REG_CTRL, ctrl);

 ctrl &= ~(MCPDM_SW_DN_RST | MCPDM_SW_UP_RST);
 omap_mcpdm_write(mcpdm, MCPDM_REG_CTRL, ctrl);
}
