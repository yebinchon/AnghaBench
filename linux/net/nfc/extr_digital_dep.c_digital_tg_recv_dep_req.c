
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {size_t len; scalar_t__* data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;size_t local_payload_max; scalar_t__ did; struct sk_buff* saved_skb; scalar_t__ atn_count; struct sk_buff* chaining_skb; int nfc_dev; int curr_nfc_dep_pni; } ;
struct digital_dep_req_res {scalar_t__ dir; scalar_t__ cmd; int pfb; } ;


 scalar_t__ DIGITAL_CMD_DEP_REQ ;
 scalar_t__ DIGITAL_NFC_DEP_DID_BIT_SET (int ) ;
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_OUT ;
 int DIGITAL_NFC_DEP_NACK_BIT_SET (int ) ;
 scalar_t__ DIGITAL_NFC_DEP_NAD_BIT_SET (int ) ;

 int DIGITAL_NFC_DEP_PFB_IS_TIMEOUT (int ) ;

 int DIGITAL_NFC_DEP_PFB_PNI (int ) ;

 int DIGITAL_NFC_DEP_PFB_TYPE (int ) ;
 int EINVAL ;
 int EIO ;
 int EMSGSIZE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* digital_recv_dep_data_gather (struct nfc_digital_dev*,int ,struct sk_buff*,int ,int *) ;
 int digital_skb_pull_dep_sod (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_send_ack ;
 int digital_tg_send_atn (struct nfc_digital_dev*) ;
 int digital_tg_send_dep_res (struct nfc_digital_dev*,struct sk_buff*) ;
 int digital_tg_send_saved_skb (struct nfc_digital_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_tm_data_received (int ,struct sk_buff*) ;
 int pr_debug (char*) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static void digital_tg_recv_dep_req(struct nfc_digital_dev *ddev, void *arg,
        struct sk_buff *resp)
{
 int rc;
 struct digital_dep_req_res *dep_req;
 u8 pfb;
 size_t size;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 rc = ddev->skb_check_crc(resp);
 if (rc) {
  PROTOCOL_ERR("14.4.1.6");
  goto exit;
 }

 rc = digital_skb_pull_dep_sod(ddev, resp);
 if (rc) {
  PROTOCOL_ERR("14.4.1.2");
  goto exit;
 }

 if (resp->len > ddev->local_payload_max) {
  rc = -EMSGSIZE;
  goto exit;
 }

 size = sizeof(struct digital_dep_req_res);
 dep_req = (struct digital_dep_req_res *)resp->data;

 if (resp->len < size || dep_req->dir != DIGITAL_NFC_DEP_FRAME_DIR_OUT ||
     dep_req->cmd != DIGITAL_CMD_DEP_REQ) {
  rc = -EIO;
  goto exit;
 }

 pfb = dep_req->pfb;

 if (DIGITAL_NFC_DEP_DID_BIT_SET(pfb)) {
  if (ddev->did && (ddev->did == resp->data[3])) {
   size++;
  } else {
   rc = -EIO;
   goto exit;
  }
 } else if (ddev->did) {
  rc = -EIO;
  goto exit;
 }

 if (DIGITAL_NFC_DEP_NAD_BIT_SET(pfb)) {
  rc = -EIO;
  goto exit;
 }

 if (size > resp->len) {
  rc = -EIO;
  goto exit;
 }

 skb_pull(resp, size);

 switch (DIGITAL_NFC_DEP_PFB_TYPE(pfb)) {
 case 129:
  pr_debug("DIGITAL_NFC_DEP_PFB_I_PDU\n");

  if (ddev->atn_count) {



   ddev->atn_count = 0;







   if (DIGITAL_NFC_DEP_PFB_PNI(pfb) ==
     DIGITAL_NFC_DEP_PFB_PNI(ddev->curr_nfc_dep_pni - 1)) {
    rc = digital_tg_send_saved_skb(ddev);
    if (rc)
     goto exit;

    goto free_resp;
   }






  }

  if (DIGITAL_NFC_DEP_PFB_PNI(pfb) != ddev->curr_nfc_dep_pni) {
   PROTOCOL_ERR("14.12.3.4");
   rc = -EIO;
   goto exit;
  }

  kfree_skb(ddev->saved_skb);
  ddev->saved_skb = ((void*)0);

  resp = digital_recv_dep_data_gather(ddev, pfb, resp,
          digital_tg_send_ack, ((void*)0));
  if (IS_ERR(resp)) {
   rc = PTR_ERR(resp);
   resp = ((void*)0);
   goto exit;
  }





  if (!resp)
   return;

  rc = 0;
  break;
 case 130:
  if (DIGITAL_NFC_DEP_NACK_BIT_SET(pfb)) {
   if (DIGITAL_NFC_DEP_PFB_PNI(pfb + 1) !=
      ddev->curr_nfc_dep_pni) {
    rc = -EIO;
    goto exit;
   }

   ddev->atn_count = 0;

   rc = digital_tg_send_saved_skb(ddev);
   if (rc)
    goto exit;

   goto free_resp;
  }


  if (ddev->atn_count) {



   ddev->atn_count = 0;





   if (DIGITAL_NFC_DEP_PFB_PNI(pfb + 1) ==
      ddev->curr_nfc_dep_pni) {
    rc = digital_tg_send_saved_skb(ddev);
    if (rc)
     goto exit;

    goto free_resp;
   }





  }


  if (!ddev->chaining_skb ||
      DIGITAL_NFC_DEP_PFB_PNI(pfb) !=
     ddev->curr_nfc_dep_pni) {
   rc = -EIO;
   goto exit;
  }

  kfree_skb(ddev->saved_skb);
  ddev->saved_skb = ((void*)0);

  rc = digital_tg_send_dep_res(ddev, ddev->chaining_skb);
  if (rc)
   goto exit;

  goto free_resp;
 case 128:
  if (DIGITAL_NFC_DEP_PFB_IS_TIMEOUT(pfb)) {
   rc = -EINVAL;
   goto exit;
  }

  rc = digital_tg_send_atn(ddev);
  if (rc)
   goto exit;

  ddev->atn_count++;

  goto free_resp;
 }

 rc = nfc_tm_data_received(ddev->nfc_dev, resp);

exit:
 kfree_skb(ddev->chaining_skb);
 ddev->chaining_skb = ((void*)0);

 ddev->atn_count = 0;

 kfree_skb(ddev->saved_skb);
 ddev->saved_skb = ((void*)0);

 if (rc)
  kfree_skb(resp);

 return;

free_resp:
 dev_kfree_skb(resp);
}
