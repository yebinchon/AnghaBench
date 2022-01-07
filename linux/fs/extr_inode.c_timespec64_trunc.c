
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {unsigned int tv_nsec; } ;


 unsigned int NSEC_PER_SEC ;
 int WARN (int,char*,unsigned int) ;

struct timespec64 timespec64_trunc(struct timespec64 t, unsigned gran)
{

 if (gran == 1) {

 } else if (gran == NSEC_PER_SEC) {
  t.tv_nsec = 0;
 } else if (gran > 1 && gran < NSEC_PER_SEC) {
  t.tv_nsec -= t.tv_nsec % gran;
 } else {
  WARN(1, "illegal file time granularity: %u", gran);
 }
 return t;
}
