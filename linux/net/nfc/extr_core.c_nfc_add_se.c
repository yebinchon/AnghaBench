
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nfc_se {int list; int state; int type; int idx; } ;
struct nfc_dev {int secure_elements; int dev; } ;


 int EALREADY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NFC_SE_DISABLED ;
 int dev_name (int *) ;
 int kfree (struct nfc_se*) ;
 struct nfc_se* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 struct nfc_se* nfc_find_se (struct nfc_dev*,int ) ;
 int nfc_genl_se_added (struct nfc_dev*,int ,int ) ;
 int pr_debug (char*,int ,int ) ;

int nfc_add_se(struct nfc_dev *dev, u32 se_idx, u16 type)
{
 struct nfc_se *se;
 int rc;

 pr_debug("%s se index %d\n", dev_name(&dev->dev), se_idx);

 se = nfc_find_se(dev, se_idx);
 if (se)
  return -EALREADY;

 se = kzalloc(sizeof(struct nfc_se), GFP_KERNEL);
 if (!se)
  return -ENOMEM;

 se->idx = se_idx;
 se->type = type;
 se->state = NFC_SE_DISABLED;
 INIT_LIST_HEAD(&se->list);

 list_add(&se->list, &dev->secure_elements);

 rc = nfc_genl_se_added(dev, se_idx, type);
 if (rc < 0) {
  list_del(&se->list);
  kfree(se);

  return rc;
 }

 return 0;
}
