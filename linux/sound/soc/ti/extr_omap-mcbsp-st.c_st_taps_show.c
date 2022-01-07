
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp_st_data {int nr_taps; int * taps; } ;
struct omap_mcbsp {int lock; struct omap_mcbsp_st_data* st_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct omap_mcbsp* dev_get_drvdata (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t st_taps_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct omap_mcbsp *mcbsp = dev_get_drvdata(dev);
 struct omap_mcbsp_st_data *st_data = mcbsp->st_data;
 ssize_t status = 0;
 int i;

 spin_lock_irq(&mcbsp->lock);
 for (i = 0; i < st_data->nr_taps; i++)
  status += sprintf(&buf[status], (i ? ", %d" : "%d"),
      st_data->taps[i]);
 if (i)
  status += sprintf(&buf[status], "\n");
 spin_unlock_irq(&mcbsp->lock);

 return status;
}
