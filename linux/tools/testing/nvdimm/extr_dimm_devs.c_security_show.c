
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct nvdimm {TYPE_1__ sec; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOTTY ;
 int NVDIMM_SECURITY_DISABLED ;
 int NVDIMM_SECURITY_LOCKED ;
 int NVDIMM_SECURITY_UNLOCKED ;
 int NVDIMM_USER ;
 int nvdimm_security_flags (struct nvdimm*,int ) ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct nvdimm* to_nvdimm (struct device*) ;

ssize_t security_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);





 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);

 if (test_bit(NVDIMM_SECURITY_DISABLED, &nvdimm->sec.flags))
  return sprintf(buf, "disabled\n");
 if (test_bit(NVDIMM_SECURITY_UNLOCKED, &nvdimm->sec.flags))
  return sprintf(buf, "unlocked\n");
 if (test_bit(NVDIMM_SECURITY_LOCKED, &nvdimm->sec.flags))
  return sprintf(buf, "locked\n");
 return -ENOTTY;
}
