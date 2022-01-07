
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 unsigned long jiffies ;

__attribute__((used)) static long hung_timeout_jiffies(unsigned long last_checked,
     unsigned long timeout)
{

 return timeout ? last_checked - jiffies + timeout * HZ :
  MAX_SCHEDULE_TIMEOUT;
}
