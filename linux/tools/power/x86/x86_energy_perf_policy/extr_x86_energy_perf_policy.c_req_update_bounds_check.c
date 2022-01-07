
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwp_min; scalar_t__ hwp_max; scalar_t__ hwp_desired; } ;


 int EINVAL ;
 int hwp_update_enabled () ;
 int printf (char*,...) ;
 TYPE_1__ req_update ;
 scalar_t__ update_hwp_max ;
 scalar_t__ update_hwp_min ;

int req_update_bounds_check(void)
{
 if (!hwp_update_enabled())
  return 0;


 if ((update_hwp_max && update_hwp_min) &&
     (req_update.hwp_min > req_update.hwp_max)) {
  printf("hwp-min %d > hwp_max %d\n", req_update.hwp_min, req_update.hwp_max);
  return -EINVAL;
 }


 if (req_update.hwp_desired && update_hwp_max &&
     (req_update.hwp_desired > req_update.hwp_max)) {
  printf("hwp-desired cannot be greater than hwp_max\n");
  return -EINVAL;
 }

 if (req_update.hwp_desired && update_hwp_min &&
     (req_update.hwp_desired < req_update.hwp_min)) {
  printf("hwp-desired cannot be less than hwp_min\n");
  return -EINVAL;
 }

 return 0;
}
