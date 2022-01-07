
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_JIFFY_OFFSET ;
 unsigned long _msecs_to_jiffies (unsigned int const) ;

unsigned long __msecs_to_jiffies(const unsigned int m)
{



 if ((int)m < 0)
  return MAX_JIFFY_OFFSET;
 return _msecs_to_jiffies(m);
}
