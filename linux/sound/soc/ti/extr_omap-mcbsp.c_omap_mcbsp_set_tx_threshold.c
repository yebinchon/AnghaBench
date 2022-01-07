
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_mcbsp {scalar_t__ max_tx_thres; } ;


 int MCBSP_WRITE (struct omap_mcbsp*,int ,scalar_t__) ;
 int THRSH2 ;

__attribute__((used)) static void omap_mcbsp_set_tx_threshold(struct omap_mcbsp *mcbsp, u16 threshold)
{
 if (threshold && threshold <= mcbsp->max_tx_thres)
  MCBSP_WRITE(mcbsp, THRSH2, threshold - 1);
}
