
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; int tv_nsec; } ;


 int MAX_SLACK ;
 int NSEC_PER_SEC ;
 int current ;
 scalar_t__ task_nice (int ) ;

__attribute__((used)) static long __estimate_accuracy(struct timespec64 *tv)
{
 long slack;
 int divfactor = 1000;

 if (tv->tv_sec < 0)
  return 0;

 if (task_nice(current) > 0)
  divfactor = divfactor / 5;

 if (tv->tv_sec > MAX_SLACK / (NSEC_PER_SEC/divfactor))
  return MAX_SLACK;

 slack = tv->tv_nsec / divfactor;
 slack += tv->tv_sec * (NSEC_PER_SEC/divfactor);

 if (slack > MAX_SLACK)
  return MAX_SLACK;

 return slack;
}
