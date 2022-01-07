
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; scalar_t__ tv_usec; } ;


 double USEC_PER_SEC ;

__attribute__((used)) static double timeval2double(struct timeval *t)
{
 return t->tv_sec + (double) t->tv_usec/USEC_PER_SEC;
}
