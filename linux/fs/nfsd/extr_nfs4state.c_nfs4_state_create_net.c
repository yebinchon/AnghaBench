
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_opens; int list; } ;
struct nfsd_net {int grace_ended; int * conf_id_hashtbl; int * unconf_id_hashtbl; int laundromat_work; int blocked_locks_lru; int blocked_locks_lock; int s2s_cp_stateids; int s2s_cp_lock; int client_lock; int del_recall_lru; int close_lru; int client_lru; TYPE_1__ nfsd4_manager; int boot_time; void* unconf_name_tree; void* conf_name_tree; int * sessionid_hashtbl; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 int CLIENT_HASH_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 int SESSION_HASH_SIZE ;
 int get_net (struct net*) ;
 int get_seconds () ;
 int idr_init (int *) ;
 int kfree (int *) ;
 void* kmalloc_array (int,int,int ) ;
 int laundromat_main ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nfs4_state_create_net(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 int i;

 nn->conf_id_hashtbl = kmalloc_array(CLIENT_HASH_SIZE,
         sizeof(struct list_head),
         GFP_KERNEL);
 if (!nn->conf_id_hashtbl)
  goto err;
 nn->unconf_id_hashtbl = kmalloc_array(CLIENT_HASH_SIZE,
           sizeof(struct list_head),
           GFP_KERNEL);
 if (!nn->unconf_id_hashtbl)
  goto err_unconf_id;
 nn->sessionid_hashtbl = kmalloc_array(SESSION_HASH_SIZE,
           sizeof(struct list_head),
           GFP_KERNEL);
 if (!nn->sessionid_hashtbl)
  goto err_sessionid;

 for (i = 0; i < CLIENT_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&nn->conf_id_hashtbl[i]);
  INIT_LIST_HEAD(&nn->unconf_id_hashtbl[i]);
 }
 for (i = 0; i < SESSION_HASH_SIZE; i++)
  INIT_LIST_HEAD(&nn->sessionid_hashtbl[i]);
 nn->conf_name_tree = RB_ROOT;
 nn->unconf_name_tree = RB_ROOT;
 nn->boot_time = get_seconds();
 nn->grace_ended = 0;
 nn->nfsd4_manager.block_opens = 1;
 INIT_LIST_HEAD(&nn->nfsd4_manager.list);
 INIT_LIST_HEAD(&nn->client_lru);
 INIT_LIST_HEAD(&nn->close_lru);
 INIT_LIST_HEAD(&nn->del_recall_lru);
 spin_lock_init(&nn->client_lock);
 spin_lock_init(&nn->s2s_cp_lock);
 idr_init(&nn->s2s_cp_stateids);

 spin_lock_init(&nn->blocked_locks_lock);
 INIT_LIST_HEAD(&nn->blocked_locks_lru);

 INIT_DELAYED_WORK(&nn->laundromat_work, laundromat_main);
 get_net(net);

 return 0;

err_sessionid:
 kfree(nn->unconf_id_hashtbl);
err_unconf_id:
 kfree(nn->conf_id_hashtbl);
err:
 return -ENOMEM;
}
