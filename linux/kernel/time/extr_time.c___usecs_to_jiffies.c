
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_JIFFY_OFFSET ;
 unsigned long _usecs_to_jiffies (unsigned int const) ;
 unsigned int const jiffies_to_usecs (unsigned long) ;

unsigned long __usecs_to_jiffies(const unsigned int u)
{
 if (u > jiffies_to_usecs(MAX_JIFFY_OFFSET))
  return MAX_JIFFY_OFFSET;
 return _usecs_to_jiffies(u);
}
