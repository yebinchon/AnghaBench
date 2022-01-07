
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {int dummy; } ;
typedef size_t ssize_t ;


 size_t bdi_set_max_ratio (struct backing_dev_info*,unsigned int) ;
 struct backing_dev_info* dev_get_drvdata (struct device*) ;
 size_t kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t max_ratio_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct backing_dev_info *bdi = dev_get_drvdata(dev);
 unsigned int ratio;
 ssize_t ret;

 ret = kstrtouint(buf, 10, &ratio);
 if (ret < 0)
  return ret;

 ret = bdi_set_max_ratio(bdi, ratio);
 if (!ret)
  ret = count;

 return ret;
}
