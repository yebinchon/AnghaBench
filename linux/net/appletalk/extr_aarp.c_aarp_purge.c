
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AARP_HASH_SIZE ;
 int __aarp_expire_all (int *) ;
 int aarp_lock ;
 int * proxies ;
 int * resolved ;
 int * unresolved ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void aarp_purge(void)
{
 int ct;

 write_lock_bh(&aarp_lock);
 for (ct = 0; ct < AARP_HASH_SIZE; ct++) {
  __aarp_expire_all(&resolved[ct]);
  __aarp_expire_all(&unresolved[ct]);
  __aarp_expire_all(&proxies[ct]);
 }
 write_unlock_bh(&aarp_lock);
}
