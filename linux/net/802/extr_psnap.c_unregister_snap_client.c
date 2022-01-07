
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {int node; } ;


 int kfree (struct datalink_proto*) ;
 int list_del_rcu (int *) ;
 int snap_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

void unregister_snap_client(struct datalink_proto *proto)
{
 spin_lock_bh(&snap_lock);
 list_del_rcu(&proto->node);
 spin_unlock_bh(&snap_lock);

 synchronize_net();

 kfree(proto);
}
