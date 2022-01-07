
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int orig_interval; } ;


 int BATADV_JITTER ;
 unsigned int atomic_read (int *) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int prandom_u32 () ;

__attribute__((used)) static unsigned long
batadv_iv_ogm_emit_send_time(const struct batadv_priv *bat_priv)
{
 unsigned int msecs;

 msecs = atomic_read(&bat_priv->orig_interval) - BATADV_JITTER;
 msecs += prandom_u32() % (2 * BATADV_JITTER);

 return jiffies + msecs_to_jiffies(msecs);
}
