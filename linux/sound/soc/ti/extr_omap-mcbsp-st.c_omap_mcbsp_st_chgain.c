
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp_st_data {int ch1gain; int ch0gain; } ;
struct omap_mcbsp {struct omap_mcbsp_st_data* st_data; } ;


 int MCBSP_ST_READ (struct omap_mcbsp*,int ) ;
 int MCBSP_ST_WRITE (struct omap_mcbsp*,int ,int) ;
 int SGAINCR ;
 int SSELCR ;
 int ST_CH0GAIN (int ) ;
 int ST_CH1GAIN (int ) ;

__attribute__((used)) static void omap_mcbsp_st_chgain(struct omap_mcbsp *mcbsp)
{
 u16 w;
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

 w = MCBSP_ST_READ(mcbsp, SSELCR);

 MCBSP_ST_WRITE(mcbsp, SGAINCR, ST_CH0GAIN(st_data->ch0gain) |
         ST_CH1GAIN(st_data->ch1gain));
}
