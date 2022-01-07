
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct socket {int sk; } ;
struct net_device {int name; int ** dev_addr; } ;
struct TYPE_7__ {int msg_flags; } ;
struct TYPE_6__ {int ** h_dest; int ** h_source; } ;
struct bnep_session {scalar_t__ state; int flags; long long mc_filter; int task; TYPE_3__ msg; int role; struct socket* sock; struct net_device* dev; TYPE_2__ eh; } ;
struct bnep_connadd_req {int flags; char* device; int role; } ;
struct TYPE_8__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int src; int dst; } ;


 int BIT (int ) ;
 int BNEP_SETUP_RESPONSE ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*) ;
 int EBADFD ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ IS_ERR (int ) ;
 int MSG_NOSIGNAL ;
 int NET_NAME_UNKNOWN ;
 int PTR_ERR (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int THIS_MODULE ;
 struct bnep_session* __bnep_get_session (int *) ;
 int __bnep_link_session (struct bnep_session*) ;
 int __bnep_unlink_session (struct bnep_session*) ;
 int __module_get (int ) ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int baswap (void*,int *) ;
 int bnep_get_device (struct bnep_session*) ;
 int bnep_net_setup ;
 int bnep_session ;
 int bnep_session_sem ;
 int bnep_set_default_proto_filter (struct bnep_session*) ;
 int bnep_type ;
 int down_write (int *) ;
 int free_netdev (struct net_device*) ;
 int kthread_run (int ,struct bnep_session*,char*,int ) ;
 int l2cap_is_socket (struct socket*) ;
 TYPE_4__* l2cap_pi (int ) ;
 int memcpy (int **,int **,int) ;
 int module_put (int ) ;
 struct bnep_session* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int strcpy (char*,int ) ;
 int unregister_netdev (struct net_device*) ;
 int up_write (int *) ;

int bnep_add_connection(struct bnep_connadd_req *req, struct socket *sock)
{
 u32 valid_flags = BIT(BNEP_SETUP_RESPONSE);
 struct net_device *dev;
 struct bnep_session *s, *ss;
 u8 dst[ETH_ALEN], src[ETH_ALEN];
 int err;

 BT_DBG("");

 if (!l2cap_is_socket(sock))
  return -EBADFD;

 if (req->flags & ~valid_flags)
  return -EINVAL;

 baswap((void *) dst, &l2cap_pi(sock->sk)->chan->dst);
 baswap((void *) src, &l2cap_pi(sock->sk)->chan->src);


 dev = alloc_netdev(sizeof(struct bnep_session),
      (*req->device) ? req->device : "bnep%d",
      NET_NAME_UNKNOWN,
      bnep_net_setup);
 if (!dev)
  return -ENOMEM;

 down_write(&bnep_session_sem);

 ss = __bnep_get_session(dst);
 if (ss && ss->state == BT_CONNECTED) {
  err = -EEXIST;
  goto failed;
 }

 s = netdev_priv(dev);



 memcpy(s->eh.h_dest, &src, ETH_ALEN);
 memcpy(s->eh.h_source, &dst, ETH_ALEN);
 memcpy(dev->dev_addr, s->eh.h_dest, ETH_ALEN);

 s->dev = dev;
 s->sock = sock;
 s->role = req->role;
 s->state = BT_CONNECTED;
 s->flags = req->flags;

 s->msg.msg_flags = MSG_NOSIGNAL;
 SET_NETDEV_DEV(dev, bnep_get_device(s));
 SET_NETDEV_DEVTYPE(dev, &bnep_type);

 err = register_netdev(dev);
 if (err)
  goto failed;

 __bnep_link_session(s);

 __module_get(THIS_MODULE);
 s->task = kthread_run(bnep_session, s, "kbnepd %s", dev->name);
 if (IS_ERR(s->task)) {

  module_put(THIS_MODULE);
  unregister_netdev(dev);
  __bnep_unlink_session(s);
  err = PTR_ERR(s->task);
  goto failed;
 }

 up_write(&bnep_session_sem);
 strcpy(req->device, dev->name);
 return 0;

failed:
 up_write(&bnep_session_sem);
 free_netdev(dev);
 return err;
}
