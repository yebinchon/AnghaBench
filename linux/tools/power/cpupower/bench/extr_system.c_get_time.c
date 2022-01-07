
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long long tv_sec; scalar_t__ tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;

long long int get_time()
{
 struct timeval now;

 gettimeofday(&now, ((void*)0));

 return (long long int)(now.tv_sec * 1000000LL + now.tv_usec);
}
