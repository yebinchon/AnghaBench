
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u64rec {double processed; } ;
typedef double __u64 ;



__attribute__((used)) static double calc_pps_u64(struct u64rec *r, struct u64rec *p, double period)
{
 __u64 packets = 0;
 double pps = 0;

 if (period > 0) {
  packets = r->processed - p->processed;
  pps = packets / period;
 }
 return pps;
}
