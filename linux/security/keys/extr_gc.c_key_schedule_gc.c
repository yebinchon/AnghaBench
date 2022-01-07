
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;


 scalar_t__ HZ ;
 int KEY_GC_REAP_KEYTYPE ;
 scalar_t__ jiffies ;
 int kdebug (char*) ;
 int kenter (char*,scalar_t__) ;
 int key_gc_flags ;
 scalar_t__ key_gc_next_run ;
 int key_gc_timer ;
 int key_gc_work ;
 scalar_t__ ktime_get_real_seconds () ;
 int mod_timer (int *,unsigned long) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void key_schedule_gc(time64_t gc_at)
{
 unsigned long expires;
 time64_t now = ktime_get_real_seconds();

 kenter("%lld", gc_at - now);

 if (gc_at <= now || test_bit(KEY_GC_REAP_KEYTYPE, &key_gc_flags)) {
  kdebug("IMMEDIATE");
  schedule_work(&key_gc_work);
 } else if (gc_at < key_gc_next_run) {
  kdebug("DEFERRED");
  key_gc_next_run = gc_at;
  expires = jiffies + (gc_at - now) * HZ;
  mod_timer(&key_gc_timer, expires);
 }
}
