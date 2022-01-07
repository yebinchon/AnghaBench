
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sid; } ;
struct sel_ib_pkey {TYPE_1__ psec; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sel_ib_pkey* sel_ib_pkey_find (int ,int ) ;
 int sel_ib_pkey_sid_slow (int ,int ,int *) ;

int sel_ib_pkey_sid(u64 subnet_prefix, u16 pkey_num, u32 *sid)
{
 struct sel_ib_pkey *pkey;

 rcu_read_lock();
 pkey = sel_ib_pkey_find(subnet_prefix, pkey_num);
 if (pkey) {
  *sid = pkey->psec.sid;
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();

 return sel_ib_pkey_sid_slow(subnet_prefix, pkey_num, sid);
}
