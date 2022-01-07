
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tg_get_rf_tech ) (struct nfc_digital_dev*,int*) ;} ;


 scalar_t__ IS_ERR (struct sk_buff*) ;



 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_tg_config_nfca (struct nfc_digital_dev*) ;
 int digital_tg_config_nfcf (struct nfc_digital_dev*,int) ;
 int digital_tg_recv_sens_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;
 int digital_tg_recv_sensf_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;
 int stub1 (struct nfc_digital_dev*,int*) ;

void digital_tg_recv_md_req(struct nfc_digital_dev *ddev, void *arg,
       struct sk_buff *resp)
{
 u8 rf_tech;
 int rc;

 if (IS_ERR(resp)) {
  resp = ((void*)0);
  goto exit_free_skb;
 }

 rc = ddev->ops->tg_get_rf_tech(ddev, &rf_tech);
 if (rc)
  goto exit_free_skb;

 switch (rf_tech) {
 case 130:
  rc = digital_tg_config_nfca(ddev);
  if (rc)
   goto exit_free_skb;
  digital_tg_recv_sens_req(ddev, arg, resp);
  break;
 case 129:
 case 128:
  rc = digital_tg_config_nfcf(ddev, rf_tech);
  if (rc)
   goto exit_free_skb;
  digital_tg_recv_sensf_req(ddev, arg, resp);
  break;
 default:
  goto exit_free_skb;
 }

 return;

exit_free_skb:
 digital_poll_next_tech(ddev);
 dev_kfree_skb(resp);
}
