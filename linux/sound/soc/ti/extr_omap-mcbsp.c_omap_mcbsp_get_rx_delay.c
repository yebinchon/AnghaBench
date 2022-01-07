
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_mcbsp {int dummy; } ;


 scalar_t__ MCBSP_READ (struct omap_mcbsp*,int ) ;
 int RBUFFSTAT ;
 int THRSH1 ;

__attribute__((used)) static u16 omap_mcbsp_get_rx_delay(struct omap_mcbsp *mcbsp)
{
 u16 buffstat, threshold;


 buffstat = MCBSP_READ(mcbsp, RBUFFSTAT);

 threshold = MCBSP_READ(mcbsp, THRSH1);


 if (threshold <= buffstat)
  return 0;
 else
  return threshold - buffstat;
}
