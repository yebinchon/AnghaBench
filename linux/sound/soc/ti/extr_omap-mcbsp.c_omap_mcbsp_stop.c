
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct omap_mcbsp {scalar_t__ st_data; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ has_ccr; } ;


 int MCBSP_READ_CACHE (struct omap_mcbsp*,int ) ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int) ;
 int RCCR ;
 int RDISABLE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SPCR1 ;
 int SPCR2 ;
 int XCCR ;
 int XDISABLE ;
 int omap_mcbsp_st_stop (struct omap_mcbsp*) ;

__attribute__((used)) static void omap_mcbsp_stop(struct omap_mcbsp *mcbsp, int stream)
{
 int tx = (stream == SNDRV_PCM_STREAM_PLAYBACK);
 int rx = !tx;
 int idle;
 u16 w;


 tx &= 1;
 if (mcbsp->pdata->has_ccr) {
  w = MCBSP_READ_CACHE(mcbsp, XCCR);
  w |= (tx ? XDISABLE : 0);
  MCBSP_WRITE(mcbsp, XCCR, w);
 }
 w = MCBSP_READ_CACHE(mcbsp, SPCR2);
 MCBSP_WRITE(mcbsp, SPCR2, w & ~tx);


 rx &= 1;
 if (mcbsp->pdata->has_ccr) {
  w = MCBSP_READ_CACHE(mcbsp, RCCR);
  w |= (rx ? RDISABLE : 0);
  MCBSP_WRITE(mcbsp, RCCR, w);
 }
 w = MCBSP_READ_CACHE(mcbsp, SPCR1);
 MCBSP_WRITE(mcbsp, SPCR1, w & ~rx);

 idle = !((MCBSP_READ_CACHE(mcbsp, SPCR2) |
   MCBSP_READ_CACHE(mcbsp, SPCR1)) & 1);

 if (idle) {

  w = MCBSP_READ_CACHE(mcbsp, SPCR2);
  MCBSP_WRITE(mcbsp, SPCR2, w & ~(1 << 6));
 }

 if (mcbsp->st_data)
  omap_mcbsp_st_stop(mcbsp);
}
