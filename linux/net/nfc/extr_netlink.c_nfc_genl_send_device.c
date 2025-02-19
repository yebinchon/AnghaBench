
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int EMSGSIZE ;
 int NFC_CMD_GET_DEVICE ;
 int genl_dump_check_consistent (struct netlink_callback*,void*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int ) ;
 int nfc_genl_family ;
 scalar_t__ nfc_genl_setup_device_added (struct nfc_dev*,struct sk_buff*) ;

__attribute__((used)) static int nfc_genl_send_device(struct sk_buff *msg, struct nfc_dev *dev,
    u32 portid, u32 seq,
    struct netlink_callback *cb,
    int flags)
{
 void *hdr;

 hdr = genlmsg_put(msg, portid, seq, &nfc_genl_family, flags,
     NFC_CMD_GET_DEVICE);
 if (!hdr)
  return -EMSGSIZE;

 if (cb)
  genl_dump_check_consistent(cb, hdr);

 if (nfc_genl_setup_device_added(dev, msg))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
