
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_se {int type; } ;
struct nfc_evt_transaction {int params; int params_len; int aid; int aid_len; } ;
struct nfc_dev {int dev; int idx; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_ATTR_SE_AID ;
 int NFC_ATTR_SE_INDEX ;
 int NFC_ATTR_SE_PARAMS ;
 int NFC_ATTR_SE_TYPE ;
 int NFC_EVENT_SE_TRANSACTION ;
 int NLMSG_DEFAULT_SIZE ;
 int devm_kfree (int *,struct nfc_evt_transaction*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 struct nfc_se* nfc_find_se (struct nfc_dev*,int ) ;
 int nfc_genl_family ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

int nfc_genl_se_transaction(struct nfc_dev *dev, u8 se_idx,
       struct nfc_evt_transaction *evt_transaction)
{
 struct nfc_se *se;
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0,
     NFC_EVENT_SE_TRANSACTION);
 if (!hdr)
  goto free_msg;

 se = nfc_find_se(dev, se_idx);
 if (!se)
  goto free_msg;

 if (nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, dev->idx) ||
     nla_put_u32(msg, NFC_ATTR_SE_INDEX, se_idx) ||
     nla_put_u8(msg, NFC_ATTR_SE_TYPE, se->type) ||
     nla_put(msg, NFC_ATTR_SE_AID, evt_transaction->aid_len,
      evt_transaction->aid) ||
     nla_put(msg, NFC_ATTR_SE_PARAMS, evt_transaction->params_len,
      evt_transaction->params))
  goto nla_put_failure;


 devm_kfree(&dev->dev, evt_transaction);

 genlmsg_end(msg, hdr);

 genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_KERNEL);

 return 0;

nla_put_failure:
free_msg:

 devm_kfree(&dev->dev, evt_transaction);
 nlmsg_free(msg);
 return -EMSGSIZE;
}
