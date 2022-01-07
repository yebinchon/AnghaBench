
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp {int dma_op_mode; int lock; int free; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t EBUSY ;
 struct omap_mcbsp* dev_get_drvdata (struct device*) ;
 int dma_op_modes ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_match_string (int ,char const*) ;

__attribute__((used)) static ssize_t dma_op_mode_store(struct device *dev,
     struct device_attribute *attr, const char *buf,
     size_t size)
{
 struct omap_mcbsp *mcbsp = dev_get_drvdata(dev);
 int i;

 i = sysfs_match_string(dma_op_modes, buf);
 if (i < 0)
  return i;

 spin_lock_irq(&mcbsp->lock);
 if (!mcbsp->free) {
  size = -EBUSY;
  goto unlock;
 }
 mcbsp->dma_op_mode = i;

unlock:
 spin_unlock_irq(&mcbsp->lock);

 return size;
}
