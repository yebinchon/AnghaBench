
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sid; int pkey; int subnet_prefix; } ;
struct sel_ib_pkey {TYPE_1__ psec; } ;


 int GFP_ATOMIC ;
 struct sel_ib_pkey* kzalloc (int,int ) ;
 int security_ib_pkey_sid (int *,int ,int ,int *) ;
 struct sel_ib_pkey* sel_ib_pkey_find (int ,int ) ;
 int sel_ib_pkey_insert (struct sel_ib_pkey*) ;
 int sel_ib_pkey_lock ;
 int selinux_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sel_ib_pkey_sid_slow(u64 subnet_prefix, u16 pkey_num, u32 *sid)
{
 int ret;
 struct sel_ib_pkey *pkey;
 struct sel_ib_pkey *new = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&sel_ib_pkey_lock, flags);
 pkey = sel_ib_pkey_find(subnet_prefix, pkey_num);
 if (pkey) {
  *sid = pkey->psec.sid;
  spin_unlock_irqrestore(&sel_ib_pkey_lock, flags);
  return 0;
 }

 ret = security_ib_pkey_sid(&selinux_state, subnet_prefix, pkey_num,
       sid);
 if (ret)
  goto out;




 new = kzalloc(sizeof(*new), GFP_ATOMIC);
 if (!new)
  goto out;

 new->psec.subnet_prefix = subnet_prefix;
 new->psec.pkey = pkey_num;
 new->psec.sid = *sid;
 sel_ib_pkey_insert(new);

out:
 spin_unlock_irqrestore(&sel_ib_pkey_lock, flags);
 return ret;
}
