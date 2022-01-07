
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long do_div (unsigned long long,int) ;

__attribute__((used)) static unsigned long nsec_low(unsigned long long nsec)
{
 if ((long long)nsec < 0)
  nsec = -nsec;

 return do_div(nsec, 1000000);
}
