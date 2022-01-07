
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_zero; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int sin ;
typedef int _ports ;
typedef int __be16 ;
struct TYPE_4__ {int daddr; } ;


 int AF_INET ;
 int IP_ORIGDSTADDR ;
 int SOL_IP ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct sockaddr_in*) ;
 int * skb_header_pointer (struct sk_buff*,int ,int,int **) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static void ip_cmsg_recv_dstaddr(struct msghdr *msg, struct sk_buff *skb)
{
 __be16 _ports[2], *ports;
 struct sockaddr_in sin;





 ports = skb_header_pointer(skb, skb_transport_offset(skb),
       sizeof(_ports), &_ports);
 if (!ports)
  return;

 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = ip_hdr(skb)->daddr;
 sin.sin_port = ports[1];
 memset(sin.sin_zero, 0, sizeof(sin.sin_zero));

 put_cmsg(msg, SOL_IP, IP_ORIGDSTADDR, sizeof(sin), &sin);
}
