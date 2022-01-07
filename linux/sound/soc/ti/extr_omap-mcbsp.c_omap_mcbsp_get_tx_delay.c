
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct omap_mcbsp {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ buffer_size; } ;


 scalar_t__ MCBSP_READ (struct omap_mcbsp*,int ) ;
 int XBUFFSTAT ;

__attribute__((used)) static u16 omap_mcbsp_get_tx_delay(struct omap_mcbsp *mcbsp)
{
 u16 buffstat;


 buffstat = MCBSP_READ(mcbsp, XBUFFSTAT);


 return mcbsp->pdata->buffer_size - buffstat;
}
