
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {int ch1gain; int ch0gain; } ;
struct omap_mcbsp {int lock; struct omap_mcbsp_st_data* st_data; } ;
typedef int s16 ;


 int EINVAL ;
 int ENOENT ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int omap_mcbsp_st_get_chgain(struct omap_mcbsp *mcbsp, int channel,
        s16 *chgain)
{
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;
 int ret = 0;

 if (!st_data)
  return -ENOENT;

 spin_lock_irq(&mcbsp->lock);
 if (channel == 0)
  *chgain = st_data->ch0gain;
 else if (channel == 1)
  *chgain = st_data->ch1gain;
 else
  ret = -EINVAL;
 spin_unlock_irq(&mcbsp->lock);

 return ret;
}
