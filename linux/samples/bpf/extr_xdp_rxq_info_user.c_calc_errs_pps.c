
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datarec {double issue; } ;
typedef double __u64 ;



__attribute__((used)) static __u64 calc_errs_pps(struct datarec *r,
       struct datarec *p, double period_)
{
 __u64 packets = 0;
 __u64 pps = 0;

 if (period_ > 0) {
  packets = r->issue - p->issue;
  pps = packets / period_;
 }
 return pps;
}
