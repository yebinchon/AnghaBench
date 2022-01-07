
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;



long long timespec_diff_us(struct timespec start, struct timespec end)
{
 struct timespec temp;
 if ((end.tv_nsec - start.tv_nsec) < 0) {
  temp.tv_sec = end.tv_sec - start.tv_sec - 1;
  temp.tv_nsec = 1000000000 + end.tv_nsec - start.tv_nsec;
 } else {
  temp.tv_sec = end.tv_sec - start.tv_sec;
  temp.tv_nsec = end.tv_nsec - start.tv_nsec;
 }
 return (temp.tv_sec * 1000000) + (temp.tv_nsec / 1000);
}
