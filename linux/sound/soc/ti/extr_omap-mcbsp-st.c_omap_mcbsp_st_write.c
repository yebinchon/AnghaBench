
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct omap_mcbsp {TYPE_1__* st_data; } ;
struct TYPE_2__ {scalar_t__ io_base_st; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void omap_mcbsp_st_write(struct omap_mcbsp *mcbsp, u16 reg, u32 val)
{
 writel_relaxed(val, mcbsp->st_data->io_base_st + reg);
}
