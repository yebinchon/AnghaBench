
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfmuxl {int receive_lock; int srvl_list; } ;
struct cflayer {int node; } ;


 struct cfmuxl* container_obj (struct cflayer*) ;
 struct cflayer* get_from_id (int *,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cfmuxl_set_uplayer(struct cflayer *layr, struct cflayer *up, u8 linkid)
{
 struct cfmuxl *muxl = container_obj(layr);
 struct cflayer *old;

 spin_lock_bh(&muxl->receive_lock);


 old = get_from_id(&muxl->srvl_list, linkid);
 if (old != ((void*)0))
  list_del_rcu(&old->node);

 list_add_rcu(&up->node, &muxl->srvl_list);
 spin_unlock_bh(&muxl->receive_lock);

 return 0;
}
