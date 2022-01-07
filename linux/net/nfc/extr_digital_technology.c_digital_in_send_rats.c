
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;


 int DIGITAL_RATS_BYTE1 ;
 int DIGITAL_RATS_PARAM ;
 int ENOMEM ;
 int digital_in_recv_ats ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,struct nfc_target*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int ) ;

__attribute__((used)) static int digital_in_send_rats(struct nfc_digital_dev *ddev,
    struct nfc_target *target)
{
 int rc;
 struct sk_buff *skb;

 skb = digital_skb_alloc(ddev, 2);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, DIGITAL_RATS_BYTE1);
 skb_put_u8(skb, DIGITAL_RATS_PARAM);

 rc = digital_in_send_cmd(ddev, skb, 30, digital_in_recv_ats,
     target);
 if (rc)
  kfree_skb(skb);

 return rc;
}
