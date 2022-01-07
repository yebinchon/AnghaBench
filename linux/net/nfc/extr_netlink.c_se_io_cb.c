
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct se_io_ctx {int se_idx; int dev_idx; } ;


 int GFP_KERNEL ;
 int NFC_ATTR_DEVICE_INDEX ;
 int NFC_ATTR_SE_APDU ;
 int NFC_ATTR_SE_INDEX ;
 int NFC_CMD_SE_IO ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int kfree (struct se_io_ctx*) ;
 int nfc_genl_family ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void se_io_cb(void *context, u8 *apdu, size_t apdu_len, int err)
{
 struct se_io_ctx *ctx = context;
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  kfree(ctx);
  return;
 }

 hdr = genlmsg_put(msg, 0, 0, &nfc_genl_family, 0,
     NFC_CMD_SE_IO);
 if (!hdr)
  goto free_msg;

 if (nla_put_u32(msg, NFC_ATTR_DEVICE_INDEX, ctx->dev_idx) ||
     nla_put_u32(msg, NFC_ATTR_SE_INDEX, ctx->se_idx) ||
     nla_put(msg, NFC_ATTR_SE_APDU, apdu_len, apdu))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast(&nfc_genl_family, msg, 0, 0, GFP_KERNEL);

 kfree(ctx);

 return;

nla_put_failure:
free_msg:
 nlmsg_free(msg);
 kfree(ctx);

 return;
}
