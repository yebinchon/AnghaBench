
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key_deferred {unsigned long timeout; int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int STATIC_KEY_CHECK_USE (struct static_key_deferred*) ;
 int jump_label_update_timeout ;

void jump_label_rate_limit(struct static_key_deferred *key,
  unsigned long rl)
{
 STATIC_KEY_CHECK_USE(key);
 key->timeout = rl;
 INIT_DELAYED_WORK(&key->work, jump_label_update_timeout);
}
