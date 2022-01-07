
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,int) ;

__attribute__((used)) static long long nsec_high(unsigned long long nsec)
{
 if ((long long)nsec < 0) {
  nsec = -nsec;
  do_div(nsec, 1000000);
  return -nsec;
 }
 do_div(nsec, 1000000);

 return nsec;
}
