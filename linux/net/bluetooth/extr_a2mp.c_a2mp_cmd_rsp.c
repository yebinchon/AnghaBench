
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct amp_mgr {int dummy; } ;
struct a2mp_cmd {int len; int code; int ident; } ;


 int BT_DBG (char*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static inline int a2mp_cmd_rsp(struct amp_mgr *mgr, struct sk_buff *skb,
          struct a2mp_cmd *hdr)
{
 BT_DBG("ident %d code 0x%2.2x", hdr->ident, hdr->code);

 skb_pull(skb, le16_to_cpu(hdr->len));
 return 0;
}
