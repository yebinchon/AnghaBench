
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time64_t ;
struct key {unsigned int expiry; int sem; } ;


 int down_write (int *) ;
 unsigned int key_gc_delay ;
 int key_schedule_gc (unsigned int) ;
 unsigned int ktime_get_real_seconds () ;
 int up_write (int *) ;

void key_set_timeout(struct key *key, unsigned timeout)
{
 time64_t expiry = 0;


 down_write(&key->sem);

 if (timeout > 0)
  expiry = ktime_get_real_seconds() + timeout;

 key->expiry = expiry;
 key_schedule_gc(key->expiry + key_gc_delay);

 up_write(&key->sem);
}
