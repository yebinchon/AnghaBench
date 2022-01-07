
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_mcbsp {TYPE_2__* st_data; TYPE_1__* pdata; } ;
struct TYPE_4__ {int mcbsp_iclk; } ;
struct TYPE_3__ {int (* force_ick_on ) (int ,int) ;} ;


 unsigned int MCBSP_READ (struct omap_mcbsp*,int ) ;
 unsigned int MCBSP_ST_READ (struct omap_mcbsp*,int ) ;
 int MCBSP_ST_WRITE (struct omap_mcbsp*,int ,unsigned int) ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,unsigned int) ;
 unsigned int SIDETONEEN ;
 int SSELCR ;
 unsigned int ST_AUTOIDLE ;
 unsigned int ST_SIDETONEEN ;
 int SYSCONFIG ;
 int stub1 (int ,int) ;

__attribute__((used)) static void omap_mcbsp_st_on(struct omap_mcbsp *mcbsp)
{
 unsigned int w;

 if (mcbsp->pdata->force_ick_on)
  mcbsp->pdata->force_ick_on(mcbsp->st_data->mcbsp_iclk, 1);


 w = MCBSP_ST_READ(mcbsp, SYSCONFIG);
 MCBSP_ST_WRITE(mcbsp, SYSCONFIG, w & ~(ST_AUTOIDLE));


 w = MCBSP_READ(mcbsp, SSELCR);
 MCBSP_WRITE(mcbsp, SSELCR, w | SIDETONEEN);


 w = MCBSP_ST_READ(mcbsp, SSELCR);
 MCBSP_ST_WRITE(mcbsp, SSELCR, w | ST_SIDETONEEN);
}
