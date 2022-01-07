
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_usec; } ;
struct __kernel_timex {int modes; int tick; int freq; TYPE_1__ time; } ;


 int ADJ_ADJTIME ;
 int ADJ_FREQUENCY ;
 int ADJ_NANO ;
 int ADJ_OFFSET_READONLY ;
 int ADJ_OFFSET_SINGLESHOT ;
 int ADJ_SETOFFSET ;
 int ADJ_TICK ;
 int BITS_PER_LONG ;
 int CAP_SYS_TIME ;
 int EINVAL ;
 int EPERM ;
 int LLONG_MAX ;
 int LLONG_MIN ;
 scalar_t__ NSEC_PER_SEC ;
 int PPM_SCALE ;
 scalar_t__ USEC_PER_SEC ;
 int USER_HZ ;
 int capable (int ) ;

__attribute__((used)) static int timekeeping_validate_timex(const struct __kernel_timex *txc)
{
 if (txc->modes & ADJ_ADJTIME) {

  if (!(txc->modes & ADJ_OFFSET_SINGLESHOT))
   return -EINVAL;
  if (!(txc->modes & ADJ_OFFSET_READONLY) &&
      !capable(CAP_SYS_TIME))
   return -EPERM;
 } else {

  if (txc->modes && !capable(CAP_SYS_TIME))
   return -EPERM;




  if (txc->modes & ADJ_TICK &&
      (txc->tick < 900000/USER_HZ ||
       txc->tick > 1100000/USER_HZ))
   return -EINVAL;
 }

 if (txc->modes & ADJ_SETOFFSET) {

  if (!capable(CAP_SYS_TIME))
   return -EPERM;
  if (txc->time.tv_usec < 0)
   return -EINVAL;

  if (txc->modes & ADJ_NANO) {
   if (txc->time.tv_usec >= NSEC_PER_SEC)
    return -EINVAL;
  } else {
   if (txc->time.tv_usec >= USEC_PER_SEC)
    return -EINVAL;
  }
 }





 if ((txc->modes & ADJ_FREQUENCY) && (BITS_PER_LONG == 64)) {
  if (LLONG_MIN / PPM_SCALE > txc->freq)
   return -EINVAL;
  if (LLONG_MAX / PPM_SCALE < txc->freq)
   return -EINVAL;
 }

 return 0;
}
