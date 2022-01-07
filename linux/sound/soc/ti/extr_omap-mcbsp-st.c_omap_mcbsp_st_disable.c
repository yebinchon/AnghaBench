
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {scalar_t__ enabled; } ;
struct omap_mcbsp {int lock; struct omap_mcbsp_st_data* st_data; } ;


 int ENODEV ;
 int omap_mcbsp_st_stop (struct omap_mcbsp*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int omap_mcbsp_st_disable(struct omap_mcbsp *mcbsp)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;
 int ret = 0;

 if (!st_data)
  return -ENODEV;

 spin_lock_irq(&mcbsp->lock);
 omap_mcbsp_st_stop(mcbsp);
 st_data->enabled = 0;
 spin_unlock_irq(&mcbsp->lock);

 return ret;
}
