
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_intel_smart_threshold {int dummy; } ;


 int EINVAL ;
 int memcpy (struct nd_intel_smart_threshold*,struct nd_intel_smart_threshold*,int) ;

__attribute__((used)) static int nfit_test_cmd_smart_threshold(
  struct nd_intel_smart_threshold *out,
  unsigned int buf_len,
  struct nd_intel_smart_threshold *smart_t)
{
 if (buf_len < sizeof(*smart_t))
  return -EINVAL;
 memcpy(out, smart_t, sizeof(*smart_t));
 return 0;
}
