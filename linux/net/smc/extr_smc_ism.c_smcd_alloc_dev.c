
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smcd_ops {int dummy; } ;
struct TYPE_3__ {int release; struct device* parent; } ;
struct smcd_dev {struct smcd_dev* conn; int event_wq; int vlan; int lock; int pnetid; struct smcd_ops const* ops; TYPE_1__ dev; } ;
struct smc_connection {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ,char const*) ;
 int dev_set_name (TYPE_1__*,char const*) ;
 int device_initialize (TYPE_1__*) ;
 struct smcd_dev* kcalloc (int,int,int ) ;
 int kfree (struct smcd_dev*) ;
 struct smcd_dev* kzalloc (int,int ) ;
 int smc_pnetid_by_dev_port (struct device*,int ,int ) ;
 int smcd_release ;
 int spin_lock_init (int *) ;

struct smcd_dev *smcd_alloc_dev(struct device *parent, const char *name,
    const struct smcd_ops *ops, int max_dmbs)
{
 struct smcd_dev *smcd;

 smcd = kzalloc(sizeof(*smcd), GFP_KERNEL);
 if (!smcd)
  return ((void*)0);
 smcd->conn = kcalloc(max_dmbs, sizeof(struct smc_connection *),
        GFP_KERNEL);
 if (!smcd->conn) {
  kfree(smcd);
  return ((void*)0);
 }

 smcd->dev.parent = parent;
 smcd->dev.release = smcd_release;
 device_initialize(&smcd->dev);
 dev_set_name(&smcd->dev, name);
 smcd->ops = ops;
 smc_pnetid_by_dev_port(parent, 0, smcd->pnetid);

 spin_lock_init(&smcd->lock);
 INIT_LIST_HEAD(&smcd->vlan);
 smcd->event_wq = alloc_ordered_workqueue("ism_evt_wq-%s)",
       WQ_MEM_RECLAIM, name);
 if (!smcd->event_wq) {
  kfree(smcd->conn);
  kfree(smcd);
  return ((void*)0);
 }
 return smcd;
}
