
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_digital_dev {int saved_skb; int dep_rwt; } ;
struct digital_data_exch {int dummy; } ;


 int EINVAL ;
 int digital_in_recv_dep_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,int ,int ,int ,struct digital_data_exch*) ;
 int kfree_skb (int ) ;
 int skb_get (int ) ;

__attribute__((used)) static int digital_in_send_saved_skb(struct nfc_digital_dev *ddev,
         struct digital_data_exch *data_exch)
{
 int rc;

 if (!ddev->saved_skb)
  return -EINVAL;

 skb_get(ddev->saved_skb);

 rc = digital_in_send_cmd(ddev, ddev->saved_skb, ddev->dep_rwt,
     digital_in_recv_dep_res, data_exch);
 if (rc)
  kfree_skb(ddev->saved_skb);

 return rc;
}
