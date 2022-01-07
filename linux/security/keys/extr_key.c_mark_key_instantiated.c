
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int state; } ;


 int KEY_IS_POSITIVE ;
 int smp_store_release (int *,int) ;

__attribute__((used)) static void mark_key_instantiated(struct key *key, int reject_error)
{



 smp_store_release(&key->state,
     (reject_error < 0) ? reject_error : KEY_IS_POSITIVE);
}
