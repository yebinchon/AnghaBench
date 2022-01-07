
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int is_iso15693; int iso15693_uid; int iso15693_dsfid; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_iso15693_inv_res {int uid; int dsfid; int flags; } ;


 int DIGITAL_ISO15693_RES_IS_VALID (int ) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_ISO15693 ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_target_found (struct nfc_digital_dev*,struct nfc_target*,int ) ;
 int kfree (struct nfc_target*) ;
 struct nfc_target* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void digital_in_recv_iso15693_inv_res(struct nfc_digital_dev *ddev,
  void *arg, struct sk_buff *resp)
{
 struct digital_iso15693_inv_res *res;
 struct nfc_target *target = ((void*)0);
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto out_free_skb;
 }

 if (resp->len != sizeof(*res)) {
  rc = -EIO;
  goto out_free_skb;
 }

 res = (struct digital_iso15693_inv_res *)resp->data;

 if (!DIGITAL_ISO15693_RES_IS_VALID(res->flags)) {
  PROTOCOL_ERR("ISO15693 - 10.3.1");
  rc = -EINVAL;
  goto out_free_skb;
 }

 target = kzalloc(sizeof(*target), GFP_KERNEL);
 if (!target) {
  rc = -ENOMEM;
  goto out_free_skb;
 }

 target->is_iso15693 = 1;
 target->iso15693_dsfid = res->dsfid;
 memcpy(target->iso15693_uid, &res->uid, sizeof(target->iso15693_uid));

 rc = digital_target_found(ddev, target, NFC_PROTO_ISO15693);

 kfree(target);

out_free_skb:
 dev_kfree_skb(resp);

 if (rc)
  digital_poll_next_tech(ddev);
}
