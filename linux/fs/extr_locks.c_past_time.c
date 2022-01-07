
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jiffies ;
 int time_after (int ,unsigned long) ;

__attribute__((used)) static bool past_time(unsigned long then)
{
 if (!then)

  return 0;
 return time_after(jiffies, then);
}
