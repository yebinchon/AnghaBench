
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_info {int id; } ;
struct cfmuxl {int transmit_lock; int * dn_cache; int frml_list; } ;
struct cflayer {scalar_t__ id; } ;


 int DN_CACHE_SIZE ;
 struct cflayer* get_from_id (int *,scalar_t__) ;
 int rcu_assign_pointer (int ,struct cflayer*) ;
 struct cflayer* rcu_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct cflayer *get_dn(struct cfmuxl *muxl, struct dev_info *dev_info)
{
 struct cflayer *dn;
 int idx = dev_info->id % DN_CACHE_SIZE;
 dn = rcu_dereference(muxl->dn_cache[idx]);
 if (dn == ((void*)0) || dn->id != dev_info->id) {
  spin_lock_bh(&muxl->transmit_lock);
  dn = get_from_id(&muxl->frml_list, dev_info->id);
  rcu_assign_pointer(muxl->dn_cache[idx], dn);
  spin_unlock_bh(&muxl->transmit_lock);
 }
 return dn;
}
