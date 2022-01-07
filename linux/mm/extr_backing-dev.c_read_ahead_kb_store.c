
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {unsigned long ra_pages; } ;
typedef scalar_t__ ssize_t ;


 int PAGE_SHIFT ;
 struct backing_dev_info* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t read_ahead_kb_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct backing_dev_info *bdi = dev_get_drvdata(dev);
 unsigned long read_ahead_kb;
 ssize_t ret;

 ret = kstrtoul(buf, 10, &read_ahead_kb);
 if (ret < 0)
  return ret;

 bdi->ra_pages = read_ahead_kb >> (PAGE_SHIFT - 10);

 return count;
}
