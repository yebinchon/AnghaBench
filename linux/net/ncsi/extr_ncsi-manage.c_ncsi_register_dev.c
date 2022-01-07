
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; int func; int type; } ;
struct ncsi_dev {void (* handler ) (struct ncsi_dev*) ;struct net_device* dev; int state; } ;
struct ncsi_dev_priv {TYPE_1__ ptype; int node; TYPE_2__* requests; int request_id; int packages; int lock; int package_whitelist; int work; int vlan_vids; int channel_queue; scalar_t__ pending_req_num; struct ncsi_dev ndev; } ;
struct TYPE_4__ {int id; int timer; struct ncsi_dev_priv* ndp; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ETH_P_NCSI ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NCSI_REQ_START_IDX ;
 int UINT_MAX ;
 int cpu_to_be16 (int ) ;
 int dev_add_pack (TYPE_1__*) ;
 struct ncsi_dev_priv* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int ncsi_dev_list ;
 int ncsi_dev_lock ;
 int ncsi_dev_state_registered ;
 int ncsi_dev_work ;
 struct ncsi_dev* ncsi_find_dev (struct net_device*) ;
 int ncsi_init_netlink (struct net_device*) ;
 int ncsi_rcv_rsp ;
 int ncsi_request_timeout ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

struct ncsi_dev *ncsi_register_dev(struct net_device *dev,
       void (*handler)(struct ncsi_dev *ndev))
{
 struct ncsi_dev_priv *ndp;
 struct ncsi_dev *nd;
 unsigned long flags;
 int i;


 nd = ncsi_find_dev(dev);
 if (nd)
  return nd;


 ndp = kzalloc(sizeof(*ndp), GFP_ATOMIC);
 if (!ndp)
  return ((void*)0);

 nd = &ndp->ndev;
 nd->state = ncsi_dev_state_registered;
 nd->dev = dev;
 nd->handler = handler;
 ndp->pending_req_num = 0;
 INIT_LIST_HEAD(&ndp->channel_queue);
 INIT_LIST_HEAD(&ndp->vlan_vids);
 INIT_WORK(&ndp->work, ncsi_dev_work);
 ndp->package_whitelist = UINT_MAX;


 spin_lock_init(&ndp->lock);
 INIT_LIST_HEAD(&ndp->packages);
 ndp->request_id = NCSI_REQ_START_IDX;
 for (i = 0; i < ARRAY_SIZE(ndp->requests); i++) {
  ndp->requests[i].id = i;
  ndp->requests[i].ndp = ndp;
  timer_setup(&ndp->requests[i].timer, ncsi_request_timeout, 0);
 }

 spin_lock_irqsave(&ncsi_dev_lock, flags);
 list_add_tail_rcu(&ndp->node, &ncsi_dev_list);
 spin_unlock_irqrestore(&ncsi_dev_lock, flags);


 ndp->ptype.type = cpu_to_be16(ETH_P_NCSI);
 ndp->ptype.func = ncsi_rcv_rsp;
 ndp->ptype.dev = dev;
 dev_add_pack(&ndp->ptype);


 ncsi_init_netlink(dev);

 return nd;
}
