
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct amp_mgr {int dummy; } ;
struct a2mp_cmd_rej {int reason; } ;
struct a2mp_cmd {int ident; int len; } ;


 int BT_DBG (char*,int ,int) ;
 int EINVAL ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_command_rej(struct amp_mgr *mgr, struct sk_buff *skb,
       struct a2mp_cmd *hdr)
{
 struct a2mp_cmd_rej *rej = (void *) skb->data;

 if (le16_to_cpu(hdr->len) < sizeof(*rej))
  return -EINVAL;

 BT_DBG("ident %d reason %d", hdr->ident, le16_to_cpu(rej->reason));

 skb_pull(skb, sizeof(*rej));

 return 0;
}
