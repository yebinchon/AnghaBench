
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int ifindex; } ;
struct cflayer {int dummy; } ;
struct cfcnfg {int dummy; } ;
struct caif_device_entry_list {int lock; int list; } ;
struct TYPE_7__ {int id; TYPE_2__* up; } ;
struct caif_device_entry {int pcpu_refcnt; int netdev; int list; TYPE_3__ layer; int flow_lock; TYPE_1__* xoff_skb; int * xoff_skb_dtor; int xoff; } ;
struct caif_dev_common {int flowctrl; int use_stx; int use_frag; } ;
struct TYPE_6__ {int (* ctrlcmd ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_5__ {int * destructor; } ;


 scalar_t__ ARPHRD_CAIF ;
 int EINVAL ;




 int _CAIF_CTRLCMD_PHYIF_DOWN_IND ;
 struct caif_device_entry_list* caif_device_list (int ) ;
 int caif_enroll_dev (struct net_device*,struct caif_dev_common*,struct cflayer*,int,struct cflayer**,int *) ;
 struct caif_device_entry* caif_get (struct net_device*) ;
 int caifd_hold (struct caif_device_entry*) ;
 int caifd_put (struct caif_device_entry*) ;
 int caifd_refcnt_read (struct caif_device_entry*) ;
 int cfcnfg_del_phy_layer (struct cfcnfg*,TYPE_3__*) ;
 int cfcnfg_set_phy_state (struct cfcnfg*,TYPE_3__*,int) ;
 struct cflayer* cfserl_create (int ,int ) ;
 int dev_flowctrl ;
 int dev_net (struct net_device*) ;
 int dev_put (int ) ;
 int free_percpu (int ) ;
 struct cfcnfg* get_cfcnfg (int ) ;
 int kfree (struct caif_device_entry*) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct caif_dev_common* netdev_priv (struct net_device*) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static int caif_device_notify(struct notifier_block *me, unsigned long what,
         void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct caif_device_entry *caifd = ((void*)0);
 struct caif_dev_common *caifdev;
 struct cfcnfg *cfg;
 struct cflayer *layer, *link_support;
 int head_room = 0;
 struct caif_device_entry_list *caifdevs;

 cfg = get_cfcnfg(dev_net(dev));
 caifdevs = caif_device_list(dev_net(dev));

 caifd = caif_get(dev);
 if (caifd == ((void*)0) && dev->type != ARPHRD_CAIF)
  return 0;

 switch (what) {
 case 130:
  if (caifd != ((void*)0))
   break;

  caifdev = netdev_priv(dev);

  link_support = ((void*)0);
  if (caifdev->use_frag) {
   head_room = 1;
   link_support = cfserl_create(dev->ifindex,
       caifdev->use_stx);
   if (!link_support) {
    pr_warn("Out of memory\n");
    break;
   }
  }
  caif_enroll_dev(dev, caifdev, link_support, head_room,
    &layer, ((void*)0));
  caifdev->flowctrl = dev_flowctrl;
  break;

 case 128:
  rcu_read_lock();

  caifd = caif_get(dev);
  if (caifd == ((void*)0)) {
   rcu_read_unlock();
   break;
  }

  caifd->xoff = 0;
  cfcnfg_set_phy_state(cfg, &caifd->layer, 1);
  rcu_read_unlock();

  break;

 case 131:
  rcu_read_lock();

  caifd = caif_get(dev);
  if (!caifd || !caifd->layer.up || !caifd->layer.up->ctrlcmd) {
   rcu_read_unlock();
   return -EINVAL;
  }

  cfcnfg_set_phy_state(cfg, &caifd->layer, 0);
  caifd_hold(caifd);
  rcu_read_unlock();

  caifd->layer.up->ctrlcmd(caifd->layer.up,
      _CAIF_CTRLCMD_PHYIF_DOWN_IND,
      caifd->layer.id);

  spin_lock_bh(&caifd->flow_lock);
  if (caifd->xoff_skb_dtor != ((void*)0) && caifd->xoff_skb != ((void*)0))
   caifd->xoff_skb->destructor = caifd->xoff_skb_dtor;

  caifd->xoff = 0;
  caifd->xoff_skb_dtor = ((void*)0);
  caifd->xoff_skb = ((void*)0);

  spin_unlock_bh(&caifd->flow_lock);
  caifd_put(caifd);
  break;

 case 129:
  mutex_lock(&caifdevs->lock);

  caifd = caif_get(dev);
  if (caifd == ((void*)0)) {
   mutex_unlock(&caifdevs->lock);
   break;
  }
  list_del_rcu(&caifd->list);
  if (caifd_refcnt_read(caifd) != 0 ||
   cfcnfg_del_phy_layer(cfg, &caifd->layer) != 0) {

   pr_info("Wait for device inuse\n");

   list_add_rcu(&caifd->list, &caifdevs->list);
   mutex_unlock(&caifdevs->lock);
   break;
  }

  synchronize_rcu();
  dev_put(caifd->netdev);
  free_percpu(caifd->pcpu_refcnt);
  kfree(caifd);

  mutex_unlock(&caifdevs->lock);
  break;
 }
 return 0;
}
