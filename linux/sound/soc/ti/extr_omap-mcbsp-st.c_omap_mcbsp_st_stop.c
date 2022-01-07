
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {scalar_t__ running; } ;
struct omap_mcbsp {int free; struct omap_mcbsp_st_data* st_data; } ;


 int omap_mcbsp_st_off (struct omap_mcbsp*) ;

int omap_mcbsp_st_stop(struct omap_mcbsp *mcbsp)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

 if (st_data->running) {
  if (!mcbsp->free) {
   omap_mcbsp_st_off(mcbsp);
   st_data->running = 0;
  }
 }

 return 0;
}
