
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_mcbsp {int dev; } ;
typedef int s16 ;


 int MCBSP_ST_READ (struct omap_mcbsp*,int ) ;
 int MCBSP_ST_WRITE (struct omap_mcbsp*,int ,int) ;
 int SFIRCR ;
 int SSELCR ;
 int ST_COEFFWRDONE ;
 int ST_COEFFWREN ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void omap_mcbsp_st_fir_write(struct omap_mcbsp *mcbsp, s16 *fir)
{
 u16 val, i;

 val = MCBSP_ST_READ(mcbsp, SSELCR);

 if (val & ST_COEFFWREN)
  MCBSP_ST_WRITE(mcbsp, SSELCR, val & ~(ST_COEFFWREN));

 MCBSP_ST_WRITE(mcbsp, SSELCR, val | ST_COEFFWREN);

 for (i = 0; i < 128; i++)
  MCBSP_ST_WRITE(mcbsp, SFIRCR, fir[i]);

 i = 0;

 val = MCBSP_ST_READ(mcbsp, SSELCR);
 while (!(val & ST_COEFFWRDONE) && (++i < 1000))
  val = MCBSP_ST_READ(mcbsp, SSELCR);

 MCBSP_ST_WRITE(mcbsp, SSELCR, val & ~(ST_COEFFWREN));

 if (i == 1000)
  dev_err(mcbsp->dev, "McBSP FIR load error!\n");
}
