
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static inline bool batadv_has_timed_out(unsigned long timestamp,
     unsigned int timeout)
{
 return time_is_before_jiffies(timestamp + msecs_to_jiffies(timeout));
}
