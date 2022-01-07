
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NSEC_PER_USEC ;

__attribute__((used)) static u64 us_to_ns(u64 us)
{
 return us * NSEC_PER_USEC;
}
