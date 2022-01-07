
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datarec {double info; } ;
typedef double __u64 ;



__attribute__((used)) static double calc_info(struct datarec *r, struct datarec *p, double period)
{
 __u64 packets = 0;
 double pps = 0;

 if (period > 0) {
  packets = r->info - p->info;
  pps = packets / period;
 }
 return pps;
}
