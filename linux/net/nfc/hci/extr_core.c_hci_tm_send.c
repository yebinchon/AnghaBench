
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* tm_send ) (struct nfc_hci_dev*,struct sk_buff*) ;} ;


 int ENOTSUPP ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int stub1 (struct nfc_hci_dev*,struct sk_buff*) ;

__attribute__((used)) static int hci_tm_send(struct nfc_dev *nfc_dev, struct sk_buff *skb)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (!hdev->ops->tm_send) {
  kfree_skb(skb);
  return -ENOTSUPP;
 }

 return hdev->ops->tm_send(hdev, skb);
}
