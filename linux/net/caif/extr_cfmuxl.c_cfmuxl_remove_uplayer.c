
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfmuxl {int receive_lock; int * up_cache; int srvl_list; } ;
struct cflayer {int node; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int UP_CACHE_SIZE ;
 struct cfmuxl* container_obj (struct cflayer*) ;
 struct cflayer* get_from_id (int *,int) ;
 int list_del_rcu (int *) ;
 int pr_warn (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct cflayer *cfmuxl_remove_uplayer(struct cflayer *layr, u8 id)
{
 struct cflayer *up;
 struct cfmuxl *muxl = container_obj(layr);
 int idx = id % UP_CACHE_SIZE;

 if (id == 0) {
  pr_warn("Trying to remove control layer\n");
  return ((void*)0);
 }

 spin_lock_bh(&muxl->receive_lock);
 up = get_from_id(&muxl->srvl_list, id);
 if (up == ((void*)0))
  goto out;

 RCU_INIT_POINTER(muxl->up_cache[idx], ((void*)0));
 list_del_rcu(&up->node);
out:
 spin_unlock_bh(&muxl->receive_lock);
 return up;
}
