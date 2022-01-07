
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfmuxl {int transmit_lock; int frml_list; } ;
struct cflayer {int node; } ;


 int list_add_rcu (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cfmuxl_set_dnlayer(struct cflayer *layr, struct cflayer *dn, u8 phyid)
{
 struct cfmuxl *muxl = (struct cfmuxl *) layr;

 spin_lock_bh(&muxl->transmit_lock);
 list_add_rcu(&dn->node, &muxl->frml_list);
 spin_unlock_bh(&muxl->transmit_lock);
 return 0;
}
