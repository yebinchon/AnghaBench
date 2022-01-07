
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 scalar_t__ NSEC_PER_SEC ;

__attribute__((used)) static inline void diff_timespec(struct timespec *r, struct timespec *a,
     struct timespec *b)
{
 r->tv_sec = a->tv_sec - b->tv_sec;
 if (a->tv_nsec < b->tv_nsec) {
  r->tv_nsec = a->tv_nsec + NSEC_PER_SEC - b->tv_nsec;
  r->tv_sec--;
 } else {
  r->tv_nsec = a->tv_nsec - b->tv_nsec ;
 }
}
