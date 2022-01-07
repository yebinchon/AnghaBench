
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {int running; int taps; scalar_t__ enabled; } ;
struct omap_mcbsp {int free; struct omap_mcbsp_st_data* st_data; } ;


 int omap_mcbsp_st_chgain (struct omap_mcbsp*) ;
 int omap_mcbsp_st_fir_write (struct omap_mcbsp*,int ) ;
 int omap_mcbsp_st_on (struct omap_mcbsp*) ;

int omap_mcbsp_st_start(struct omap_mcbsp *mcbsp)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

 if (st_data->enabled && !st_data->running) {
  omap_mcbsp_st_fir_write(mcbsp, st_data->taps);
  omap_mcbsp_st_chgain(mcbsp);

  if (!mcbsp->free) {
   omap_mcbsp_st_on(mcbsp);
   st_data->running = 1;
  }
 }

 return 0;
}
