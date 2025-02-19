
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ GENL_HDRLEN ;
 int GFP_KERNEL ;
 scalar_t__ TIPC_GENL_HDRLEN ;
 int TLV_SPACE (int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int nlmsg_total_size (scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *tipc_tlv_alloc(int size)
{
 int hdr_len;
 struct sk_buff *buf;

 size = TLV_SPACE(size);
 hdr_len = nlmsg_total_size(GENL_HDRLEN + TIPC_GENL_HDRLEN);

 buf = alloc_skb(hdr_len + size, GFP_KERNEL);
 if (!buf)
  return ((void*)0);

 skb_reserve(buf, hdr_len);

 return buf;
}
