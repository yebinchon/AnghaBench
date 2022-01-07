
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BATADV_JITTER ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int prandom_u32 () ;

__attribute__((used)) static unsigned long batadv_iv_ogm_fwd_send_time(void)
{
 return jiffies + msecs_to_jiffies(prandom_u32() % (BATADV_JITTER / 2));
}
