
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfc_dev {TYPE_1__* cur_cmd_info; } ;
typedef enum nfc_attrs { ____Placeholder_nfc_attrs } nfc_attrs ;
struct TYPE_2__ {int snd_seq; int snd_portid; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 struct sk_buff* __nfc_alloc_vendor_cmd_skb (struct nfc_dev*,int,int ,int ,int,int ,int ,int ) ;

struct sk_buff *__nfc_alloc_vendor_cmd_reply_skb(struct nfc_dev *dev,
       enum nfc_attrs attr,
       u32 oui, u32 subcmd,
       int approxlen)
{
 if (WARN_ON(!dev->cur_cmd_info))
  return ((void*)0);

 return __nfc_alloc_vendor_cmd_skb(dev, approxlen,
       dev->cur_cmd_info->snd_portid,
       dev->cur_cmd_info->snd_seq, attr,
       oui, subcmd, GFP_KERNEL);
}
