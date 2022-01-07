
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_intel_smart_threshold {int data; } ;
struct nd_intel_smart_set_threshold {scalar_t__ status; } ;
struct nd_intel_smart {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int memcpy (int ,struct nd_intel_smart_set_threshold*,unsigned int) ;
 int smart_notify (struct device*,struct device*,struct nd_intel_smart*,struct nd_intel_smart_threshold*) ;

__attribute__((used)) static int nfit_test_cmd_smart_set_threshold(
  struct nd_intel_smart_set_threshold *in,
  unsigned int buf_len,
  struct nd_intel_smart_threshold *thresh,
  struct nd_intel_smart *smart,
  struct device *bus_dev, struct device *dimm_dev)
{
 unsigned int size;

 size = sizeof(*in) - 4;
 if (buf_len < size)
  return -EINVAL;
 memcpy(thresh->data, in, size);
 in->status = 0;
 smart_notify(bus_dev, dimm_dev, smart, thresh);

 return 0;
}
