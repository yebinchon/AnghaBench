
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct l2tp_tunnel_cfg {int encap; int debug; } ;
struct l2tp_tunnel {int version; int tunnel_id; int peer_tunnel_id; int acpt_newsess; int encap; int fd; int list; int del_work; int ref_count; int debug; int hlist_lock; int * name; int magic; } ;
typedef enum l2tp_encap_type { ____Placeholder_l2tp_encap_type } l2tp_encap_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int L2TP_DEFAULT_DEBUG_FLAGS ;
 int L2TP_ENCAPTYPE_UDP ;
 int L2TP_TUNNEL_MAGIC ;
 struct l2tp_tunnel* kzalloc (int,int ) ;
 int l2tp_tunnel_del_work ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;
 int sprintf (int *,char*,int) ;

int l2tp_tunnel_create(struct net *net, int fd, int version, u32 tunnel_id, u32 peer_tunnel_id, struct l2tp_tunnel_cfg *cfg, struct l2tp_tunnel **tunnelp)
{
 struct l2tp_tunnel *tunnel = ((void*)0);
 int err;
 enum l2tp_encap_type encap = L2TP_ENCAPTYPE_UDP;

 if (cfg != ((void*)0))
  encap = cfg->encap;

 tunnel = kzalloc(sizeof(struct l2tp_tunnel), GFP_KERNEL);
 if (tunnel == ((void*)0)) {
  err = -ENOMEM;
  goto err;
 }

 tunnel->version = version;
 tunnel->tunnel_id = tunnel_id;
 tunnel->peer_tunnel_id = peer_tunnel_id;
 tunnel->debug = L2TP_DEFAULT_DEBUG_FLAGS;

 tunnel->magic = L2TP_TUNNEL_MAGIC;
 sprintf(&tunnel->name[0], "tunl %u", tunnel_id);
 rwlock_init(&tunnel->hlist_lock);
 tunnel->acpt_newsess = 1;

 if (cfg != ((void*)0))
  tunnel->debug = cfg->debug;

 tunnel->encap = encap;

 refcount_set(&tunnel->ref_count, 1);
 tunnel->fd = fd;


 INIT_WORK(&tunnel->del_work, l2tp_tunnel_del_work);

 INIT_LIST_HEAD(&tunnel->list);

 err = 0;
err:
 if (tunnelp)
  *tunnelp = tunnel;

 return err;
}
