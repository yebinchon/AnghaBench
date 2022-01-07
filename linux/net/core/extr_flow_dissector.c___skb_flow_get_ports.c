
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {void* data; } ;
typedef int _ports ;
typedef int __be32 ;


 int * __skb_header_pointer (struct sk_buff const*,int,int,void*,int,int *) ;
 int proto_ports_offset (int ) ;
 int skb_headlen (struct sk_buff const*) ;

__be32 __skb_flow_get_ports(const struct sk_buff *skb, int thoff, u8 ip_proto,
       void *data, int hlen)
{
 int poff = proto_ports_offset(ip_proto);

 if (!data) {
  data = skb->data;
  hlen = skb_headlen(skb);
 }

 if (poff >= 0) {
  __be32 *ports, _ports;

  ports = __skb_header_pointer(skb, thoff + poff,
          sizeof(_ports), data, hlen, &_ports);
  if (ports)
   return *ports;
 }

 return 0;
}
