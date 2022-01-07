
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_digital_dev {int saved_skb; } ;


 int EINVAL ;
 int digital_tg_recv_dep_req ;
 int digital_tg_send_cmd (struct nfc_digital_dev*,int ,int,int ,int *) ;
 int kfree_skb (int ) ;
 int skb_get (int ) ;

__attribute__((used)) static int digital_tg_send_saved_skb(struct nfc_digital_dev *ddev)
{
 int rc;

 if (!ddev->saved_skb)
  return -EINVAL;

 skb_get(ddev->saved_skb);

 rc = digital_tg_send_cmd(ddev, ddev->saved_skb, 1500,
     digital_tg_recv_dep_req, ((void*)0));
 if (rc)
  kfree_skb(ddev->saved_skb);

 return rc;
}
