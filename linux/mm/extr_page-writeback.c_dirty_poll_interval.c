
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ilog2 (unsigned long) ;

__attribute__((used)) static unsigned long dirty_poll_interval(unsigned long dirty,
      unsigned long thresh)
{
 if (thresh > dirty)
  return 1UL << (ilog2(thresh - dirty) >> 1);

 return 1;
}
