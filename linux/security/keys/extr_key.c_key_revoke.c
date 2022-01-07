
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct key {scalar_t__ revoked_at; int sem; TYPE_1__* type; int flags; } ;
struct TYPE_2__ {int (* revoke ) (struct key*) ;} ;


 int KEY_FLAG_REVOKED ;
 int down_write_nested (int *,int) ;
 int key_check (struct key*) ;
 scalar_t__ key_gc_delay ;
 int key_schedule_gc (scalar_t__) ;
 scalar_t__ ktime_get_real_seconds () ;
 int stub1 (struct key*) ;
 int test_and_set_bit (int ,int *) ;
 int up_write (int *) ;

void key_revoke(struct key *key)
{
 time64_t time;

 key_check(key);






 down_write_nested(&key->sem, 1);
 if (!test_and_set_bit(KEY_FLAG_REVOKED, &key->flags) &&
     key->type->revoke)
  key->type->revoke(key);


 time = ktime_get_real_seconds();
 if (key->revoked_at == 0 || key->revoked_at > time) {
  key->revoked_at = time;
  key_schedule_gc(key->revoked_at + key_gc_delay);
 }

 up_write(&key->sem);
}
