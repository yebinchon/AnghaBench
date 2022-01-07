
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct ieee802154_llsec_key_entry {TYPE_1__* key; int id; } ;
typedef int commands ;
struct TYPE_2__ {int frame_types; int * key; int cmd_frame_ids; } ;


 int BIT (int ) ;
 int EMSGSIZE ;
 int IEEE802154_ATTR_DEV_INDEX ;
 int IEEE802154_ATTR_DEV_NAME ;
 int IEEE802154_ATTR_LLSEC_KEY_BYTES ;
 int IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS ;
 int IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES ;
 int IEEE802154_FC_TYPE_MAC_CMD ;
 int IEEE802154_LLSEC_KEY_SIZE ;
 int IEEE802154_LLSEC_LIST_KEY ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ ieee802154_llsec_fill_key_id (struct sk_buff*,int *) ;
 int memset (int *,int ,int) ;
 int nl802154_family ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int
ieee802154_nl_fill_key(struct sk_buff *msg, u32 portid, u32 seq,
         const struct ieee802154_llsec_key_entry *key,
         const struct net_device *dev)
{
 void *hdr;
 u32 commands[256 / 32];

 hdr = genlmsg_put(msg, 0, seq, &nl802154_family, NLM_F_MULTI,
     IEEE802154_LLSEC_LIST_KEY);
 if (!hdr)
  goto out;

 if (nla_put_string(msg, IEEE802154_ATTR_DEV_NAME, dev->name) ||
     nla_put_u32(msg, IEEE802154_ATTR_DEV_INDEX, dev->ifindex) ||
     ieee802154_llsec_fill_key_id(msg, &key->id) ||
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES,
         key->key->frame_types))
  goto nla_put_failure;

 if (key->key->frame_types & BIT(IEEE802154_FC_TYPE_MAC_CMD)) {
  memset(commands, 0, sizeof(commands));
  commands[7] = key->key->cmd_frame_ids;
  if (nla_put(msg, IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS,
       sizeof(commands), commands))
   goto nla_put_failure;
 }

 if (nla_put(msg, IEEE802154_ATTR_LLSEC_KEY_BYTES,
      IEEE802154_LLSEC_KEY_SIZE, key->key->key))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
out:
 return -EMSGSIZE;
}
