
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int __u64 ;


 int CLOCK_MONOTONIC ;
 int EXIT_FAILURE ;
 int NANOSEC_PER_SEC ;
 int clock_gettime (int ,struct timespec*) ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static __u64 gettime(void)
{
 struct timespec t;
 int res;

 res = clock_gettime(CLOCK_MONOTONIC, &t);
 if (res < 0) {
  fprintf(stderr, "Error with gettimeofday! (%i)\n", res);
  exit(EXIT_FAILURE);
 }
 return (__u64) t.tv_sec * NANOSEC_PER_SEC + t.tv_nsec;
}
