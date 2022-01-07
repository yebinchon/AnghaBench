
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct omap_mcbsp {TYPE_1__* pdata; scalar_t__ st_data; } ;
struct TYPE_2__ {scalar_t__ has_ccr; } ;


 int CLKRM ;
 int CLKXM ;
 int FSRM ;
 int FSXM ;
 int MCBSP_READ_CACHE (struct omap_mcbsp*,int ) ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int) ;
 int PCR0 ;
 int RCCR ;
 int RDISABLE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SPCR1 ;
 int SPCR2 ;
 int XCCR ;
 int XDISABLE ;
 int omap_mcbsp_dump_reg (struct omap_mcbsp*) ;
 int omap_mcbsp_st_start (struct omap_mcbsp*) ;
 int udelay (int) ;

__attribute__((used)) static void omap_mcbsp_start(struct omap_mcbsp *mcbsp, int stream)
{
 int tx = (stream == SNDRV_PCM_STREAM_PLAYBACK);
 int rx = !tx;
 int enable_srg = 0;
 u16 w;

 if (mcbsp->st_data)
  omap_mcbsp_st_start(mcbsp);


 w = MCBSP_READ_CACHE(mcbsp, PCR0);
 if (w & (FSXM | FSRM | CLKXM | CLKRM))
  enable_srg = !((MCBSP_READ_CACHE(mcbsp, SPCR2) |
    MCBSP_READ_CACHE(mcbsp, SPCR1)) & 1);

 if (enable_srg) {

  w = MCBSP_READ_CACHE(mcbsp, SPCR2);
  MCBSP_WRITE(mcbsp, SPCR2, w | (1 << 6));
 }


 tx &= 1;
 w = MCBSP_READ_CACHE(mcbsp, SPCR2);
 MCBSP_WRITE(mcbsp, SPCR2, w | tx);

 rx &= 1;
 w = MCBSP_READ_CACHE(mcbsp, SPCR1);
 MCBSP_WRITE(mcbsp, SPCR1, w | rx);







 udelay(500);

 if (enable_srg) {

  w = MCBSP_READ_CACHE(mcbsp, SPCR2);
  MCBSP_WRITE(mcbsp, SPCR2, w | (1 << 7));
 }

 if (mcbsp->pdata->has_ccr) {

  w = MCBSP_READ_CACHE(mcbsp, XCCR);
  w &= ~(tx ? XDISABLE : 0);
  MCBSP_WRITE(mcbsp, XCCR, w);
  w = MCBSP_READ_CACHE(mcbsp, RCCR);
  w &= ~(rx ? RDISABLE : 0);
  MCBSP_WRITE(mcbsp, RCCR, w);
 }


 omap_mcbsp_dump_reg(mcbsp);
}
