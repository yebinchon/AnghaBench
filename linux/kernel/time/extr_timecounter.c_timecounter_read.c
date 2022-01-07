
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timecounter {int nsec; } ;


 int timecounter_read_delta (struct timecounter*) ;

u64 timecounter_read(struct timecounter *tc)
{
 u64 nsec;


 nsec = timecounter_read_delta(tc);
 nsec += tc->nsec;
 tc->nsec = nsec;

 return nsec;
}
