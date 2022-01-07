
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int dummy; } ;
struct delayed_work {int dummy; } ;


 int STATIC_KEY_CHECK_USE (struct static_key*) ;
 int schedule_delayed_work (struct delayed_work*,unsigned long) ;
 scalar_t__ static_key_slow_try_dec (struct static_key*) ;

void __static_key_slow_dec_deferred(struct static_key *key,
        struct delayed_work *work,
        unsigned long timeout)
{
 STATIC_KEY_CHECK_USE(key);

 if (static_key_slow_try_dec(key))
  return;

 schedule_delayed_work(work, timeout);
}
