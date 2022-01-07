
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfmuxl {int transmit_lock; int frml_list; int * dn_cache; } ;
struct cflayer {int node; } ;


 int DN_CACHE_SIZE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int caif_assert (int ) ;
 struct cfmuxl* container_obj (struct cflayer*) ;
 struct cflayer* get_from_id (int *,int) ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct cflayer *cfmuxl_remove_dnlayer(struct cflayer *layr, u8 phyid)
{
 struct cfmuxl *muxl = container_obj(layr);
 struct cflayer *dn;
 int idx = phyid % DN_CACHE_SIZE;

 spin_lock_bh(&muxl->transmit_lock);
 RCU_INIT_POINTER(muxl->dn_cache[idx], ((void*)0));
 dn = get_from_id(&muxl->frml_list, phyid);
 if (dn == ((void*)0))
  goto out;

 list_del_rcu(&dn->node);
 caif_assert(dn != ((void*)0));
out:
 spin_unlock_bh(&muxl->transmit_lock);
 return dn;
}
