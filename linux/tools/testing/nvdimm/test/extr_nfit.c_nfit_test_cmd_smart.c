
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_intel_smart {int dummy; } ;


 int EINVAL ;
 int memcpy (struct nd_intel_smart*,struct nd_intel_smart*,int) ;

__attribute__((used)) static int nfit_test_cmd_smart(struct nd_intel_smart *smart, unsigned int buf_len,
  struct nd_intel_smart *smart_data)
{
 if (buf_len < sizeof(*smart))
  return -EINVAL;
 memcpy(smart, smart_data, sizeof(*smart));
 return 0;
}
