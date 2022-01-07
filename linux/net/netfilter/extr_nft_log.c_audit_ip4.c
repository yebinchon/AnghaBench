
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int protocol; int daddr; int saddr; } ;
struct audit_buffer {int dummy; } ;
typedef int _iph ;


 int audit_log_format (struct audit_buffer*,char*,int *,int *,int ) ;
 struct iphdr* skb_header_pointer (struct sk_buff*,int ,int,struct iphdr*) ;
 int skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static bool audit_ip4(struct audit_buffer *ab, struct sk_buff *skb)
{
 struct iphdr _iph;
 const struct iphdr *ih;

 ih = skb_header_pointer(skb, skb_network_offset(skb), sizeof(_iph), &_iph);
 if (!ih)
  return 0;

 audit_log_format(ab, " saddr=%pI4 daddr=%pI4 proto=%hhu",
    &ih->saddr, &ih->daddr, ih->protocol);

 return 1;
}
