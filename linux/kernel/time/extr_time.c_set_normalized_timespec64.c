
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef scalar_t__ s64 ;


 scalar_t__ NSEC_PER_SEC ;

void set_normalized_timespec64(struct timespec64 *ts, time64_t sec, s64 nsec)
{
 while (nsec >= NSEC_PER_SEC) {





  asm("" : "+rm"(nsec));
  nsec -= NSEC_PER_SEC;
  ++sec;
 }
 while (nsec < 0) {
  asm("" : "+rm"(nsec));
  nsec += NSEC_PER_SEC;
  --sec;
 }
 ts->tv_sec = sec;
 ts->tv_nsec = nsec;
}
