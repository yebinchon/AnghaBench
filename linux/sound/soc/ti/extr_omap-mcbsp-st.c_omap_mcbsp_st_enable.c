
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {int enabled; } ;
struct omap_mcbsp {int lock; struct omap_mcbsp_st_data* st_data; } ;


 int ENODEV ;
 int omap_mcbsp_st_start (struct omap_mcbsp*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int omap_mcbsp_st_enable(struct omap_mcbsp *mcbsp)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;

 if (!st_data)
  return -ENODEV;

 spin_lock_irq(&mcbsp->lock);
 st_data->enabled = 1;
 omap_mcbsp_st_start(mcbsp);
 spin_unlock_irq(&mcbsp->lock);

 return 0;
}
