
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT (int ) ;
 int fls (unsigned long) ;

__attribute__((used)) static int find_highest_prio_tid(unsigned long tids)
{

 if (tids & 0xF8)
  return fls(tids) - 1;

 if (tids & BIT(0))
  return 0;
 return fls(tids) - 1;
}
