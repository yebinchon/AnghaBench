
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct nfnetlink_subsystem {size_t cb_count; size_t subsys_id; TYPE_1__* cb; } ;
struct TYPE_4__ {scalar_t__ subsys; } ;
struct TYPE_3__ {scalar_t__ attr_count; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ NFNL_MAX_ATTR_COUNT ;
 scalar_t__ WARN_ON (int) ;
 int nfnl_lock (size_t) ;
 int nfnl_unlock (size_t) ;
 int rcu_assign_pointer (scalar_t__,struct nfnetlink_subsystem const*) ;
 TYPE_2__* table ;

int nfnetlink_subsys_register(const struct nfnetlink_subsystem *n)
{
 u8 cb_id;


 for (cb_id = 0; cb_id < n->cb_count; cb_id++)
  if (WARN_ON(n->cb[cb_id].attr_count > NFNL_MAX_ATTR_COUNT))
   return -EINVAL;

 nfnl_lock(n->subsys_id);
 if (table[n->subsys_id].subsys) {
  nfnl_unlock(n->subsys_id);
  return -EBUSY;
 }
 rcu_assign_pointer(table[n->subsys_id].subsys, n);
 nfnl_unlock(n->subsys_id);

 return 0;
}
