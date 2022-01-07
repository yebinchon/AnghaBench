
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record {scalar_t__ timestamp; } ;
typedef scalar_t__ __u64 ;


 double NANOSEC_PER_SEC ;

__attribute__((used)) static double calc_period(struct record *r, struct record *p)
{
 double period_ = 0;
 __u64 period = 0;

 period = r->timestamp - p->timestamp;
 if (period > 0)
  period_ = ((double) period / NANOSEC_PER_SEC);

 return period_;
}
