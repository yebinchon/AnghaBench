
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_stat_callback {int timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;

__attribute__((used)) static inline void blk_stat_activate_msecs(struct blk_stat_callback *cb,
        unsigned int msecs)
{
 mod_timer(&cb->timer, jiffies + msecs_to_jiffies(msecs));
}
