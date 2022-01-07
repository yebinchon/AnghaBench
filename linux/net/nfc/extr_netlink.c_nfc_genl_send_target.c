
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfc_target {scalar_t__ nfcid1_len; scalar_t__ sensb_res_len; scalar_t__ sensf_res_len; int iso15693_uid; int iso15693_dsfid; scalar_t__ is_iso15693; int sensf_res; int sensb_res; int nfcid1; int sel_res; int sens_res; int supported_protocols; int idx; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NFC_ATTR_PROTOCOLS ;
 int NFC_ATTR_TARGET_INDEX ;
 int NFC_ATTR_TARGET_ISO15693_DSFID ;
 int NFC_ATTR_TARGET_ISO15693_UID ;
 int NFC_ATTR_TARGET_NFCID1 ;
 int NFC_ATTR_TARGET_SEL_RES ;
 int NFC_ATTR_TARGET_SENSB_RES ;
 int NFC_ATTR_TARGET_SENSF_RES ;
 int NFC_ATTR_TARGET_SENS_RES ;
 int NFC_CMD_GET_TARGET ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int nfc_genl_family ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nfc_genl_send_target(struct sk_buff *msg, struct nfc_target *target,
    struct netlink_callback *cb, int flags)
{
 void *hdr;

 hdr = genlmsg_put(msg, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq,
     &nfc_genl_family, flags, NFC_CMD_GET_TARGET);
 if (!hdr)
  return -EMSGSIZE;

 genl_dump_check_consistent(cb, hdr);

 if (nla_put_u32(msg, NFC_ATTR_TARGET_INDEX, target->idx) ||
     nla_put_u32(msg, NFC_ATTR_PROTOCOLS, target->supported_protocols) ||
     nla_put_u16(msg, NFC_ATTR_TARGET_SENS_RES, target->sens_res) ||
     nla_put_u8(msg, NFC_ATTR_TARGET_SEL_RES, target->sel_res))
  goto nla_put_failure;
 if (target->nfcid1_len > 0 &&
     nla_put(msg, NFC_ATTR_TARGET_NFCID1, target->nfcid1_len,
      target->nfcid1))
  goto nla_put_failure;
 if (target->sensb_res_len > 0 &&
     nla_put(msg, NFC_ATTR_TARGET_SENSB_RES, target->sensb_res_len,
      target->sensb_res))
  goto nla_put_failure;
 if (target->sensf_res_len > 0 &&
     nla_put(msg, NFC_ATTR_TARGET_SENSF_RES, target->sensf_res_len,
      target->sensf_res))
  goto nla_put_failure;

 if (target->is_iso15693) {
  if (nla_put_u8(msg, NFC_ATTR_TARGET_ISO15693_DSFID,
          target->iso15693_dsfid) ||
      nla_put(msg, NFC_ATTR_TARGET_ISO15693_UID,
       sizeof(target->iso15693_uid), target->iso15693_uid))
   goto nla_put_failure;
 }

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
