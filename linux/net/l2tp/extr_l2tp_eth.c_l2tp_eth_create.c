
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int name; int max_mtu; scalar_t__ min_mtu; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct l2tp_session_cfg {int ifname; } ;
struct l2tp_session {char* ifname; int show; int session_close; int recv_skb; } ;
struct l2tp_eth_sess {int dev; } ;
struct l2tp_eth {struct l2tp_session* session; } ;


 int CONFIG_L2TP_DEBUGFS ;
 int ENOMEM ;
 int ETH_MAX_MTU ;
 int IFNAMSIZ ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct l2tp_session*) ;
 int L2TP_ETH_DEV_NAME ;
 unsigned char NET_NAME_ENUM ;
 unsigned char NET_NAME_USER ;
 int PTR_ERR (struct l2tp_session*) ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 struct net_device* alloc_netdev (int,char*,unsigned char,int ) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct l2tp_session*) ;
 int l2tp_eth_adjust_mtu (struct l2tp_tunnel*,struct l2tp_session*,struct net_device*) ;
 int l2tp_eth_delete ;
 int l2tp_eth_dev_recv ;
 int l2tp_eth_dev_setup ;
 int l2tp_eth_show ;
 struct l2tp_session* l2tp_session_create (int,struct l2tp_tunnel*,int ,int ,struct l2tp_session_cfg*) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int l2tp_session_delete (struct l2tp_session*) ;
 int l2tp_session_inc_refcount (struct l2tp_session*) ;
 struct l2tp_eth_sess* l2tp_session_priv (struct l2tp_session*) ;
 int l2tp_session_register (struct l2tp_session*,struct l2tp_tunnel*) ;
 struct l2tp_eth* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int strcpy (char*,int ) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int l2tp_eth_create(struct net *net, struct l2tp_tunnel *tunnel,
      u32 session_id, u32 peer_session_id,
      struct l2tp_session_cfg *cfg)
{
 unsigned char name_assign_type;
 struct net_device *dev;
 char name[IFNAMSIZ];
 struct l2tp_session *session;
 struct l2tp_eth *priv;
 struct l2tp_eth_sess *spriv;
 int rc;

 if (cfg->ifname) {
  strlcpy(name, cfg->ifname, IFNAMSIZ);
  name_assign_type = NET_NAME_USER;
 } else {
  strcpy(name, L2TP_ETH_DEV_NAME);
  name_assign_type = NET_NAME_ENUM;
 }

 session = l2tp_session_create(sizeof(*spriv), tunnel, session_id,
          peer_session_id, cfg);
 if (IS_ERR(session)) {
  rc = PTR_ERR(session);
  goto err;
 }

 dev = alloc_netdev(sizeof(*priv), name, name_assign_type,
      l2tp_eth_dev_setup);
 if (!dev) {
  rc = -ENOMEM;
  goto err_sess;
 }

 dev_net_set(dev, net);
 dev->min_mtu = 0;
 dev->max_mtu = ETH_MAX_MTU;
 l2tp_eth_adjust_mtu(tunnel, session, dev);

 priv = netdev_priv(dev);
 priv->session = session;

 session->recv_skb = l2tp_eth_dev_recv;
 session->session_close = l2tp_eth_delete;
 if (IS_ENABLED(CONFIG_L2TP_DEBUGFS))
  session->show = l2tp_eth_show;

 spriv = l2tp_session_priv(session);

 l2tp_session_inc_refcount(session);

 rtnl_lock();





 rc = l2tp_session_register(session, tunnel);
 if (rc < 0) {
  rtnl_unlock();
  goto err_sess_dev;
 }

 rc = register_netdevice(dev);
 if (rc < 0) {
  rtnl_unlock();
  l2tp_session_delete(session);
  l2tp_session_dec_refcount(session);
  free_netdev(dev);

  return rc;
 }

 strlcpy(session->ifname, dev->name, IFNAMSIZ);
 rcu_assign_pointer(spriv->dev, dev);

 rtnl_unlock();

 l2tp_session_dec_refcount(session);

 __module_get(THIS_MODULE);

 return 0;

err_sess_dev:
 l2tp_session_dec_refcount(session);
 free_netdev(dev);
err_sess:
 kfree(session);
err:
 return rc;
}
