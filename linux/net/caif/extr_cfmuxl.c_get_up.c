
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct cfmuxl {int receive_lock; int * up_cache; int srvl_list; } ;
struct cflayer {scalar_t__ id; } ;


 scalar_t__ UP_CACHE_SIZE ;
 struct cflayer* get_from_id (int *,scalar_t__) ;
 int rcu_assign_pointer (int ,struct cflayer*) ;
 struct cflayer* rcu_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct cflayer *get_up(struct cfmuxl *muxl, u16 id)
{
 struct cflayer *up;
 int idx = id % UP_CACHE_SIZE;
 up = rcu_dereference(muxl->up_cache[idx]);
 if (up == ((void*)0) || up->id != id) {
  spin_lock_bh(&muxl->receive_lock);
  up = get_from_id(&muxl->srvl_list, id);
  rcu_assign_pointer(muxl->up_cache[idx], up);
  spin_unlock_bh(&muxl->receive_lock);
 }
 return up;
}
