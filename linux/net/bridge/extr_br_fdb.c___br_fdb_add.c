
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int hash_lock; TYPE_1__* dev; } ;
struct ndmsg {int ndm_flags; int ndm_state; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int NTF_EXT_LEARNED ;
 int NTF_USE ;
 int br_fdb_external_learn_add (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int) ;
 int br_fdb_update (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int) ;
 int fdb_add_entry (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int ,int ,int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int pr_info (char*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
   struct net_bridge_port *p, const unsigned char *addr,
   u16 nlh_flags, u16 vid)
{
 int err = 0;

 if (ndm->ndm_flags & NTF_USE) {
  if (!p) {
   pr_info("bridge: RTM_NEWNEIGH %s with NTF_USE is not supported\n",
    br->dev->name);
   return -EINVAL;
  }
  local_bh_disable();
  rcu_read_lock();
  br_fdb_update(br, p, addr, vid, 1);
  rcu_read_unlock();
  local_bh_enable();
 } else if (ndm->ndm_flags & NTF_EXT_LEARNED) {
  err = br_fdb_external_learn_add(br, p, addr, vid, 1);
 } else {
  spin_lock_bh(&br->hash_lock);
  err = fdb_add_entry(br, p, addr, ndm->ndm_state,
        nlh_flags, vid, ndm->ndm_flags);
  spin_unlock_bh(&br->hash_lock);
 }

 return err;
}
