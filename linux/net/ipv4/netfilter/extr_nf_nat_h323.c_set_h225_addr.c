
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nf_inet_addr {int ip; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;
struct TYPE_4__ {int ip; } ;
struct TYPE_5__ {TYPE_1__ ipAddress; } ;
typedef TYPE_2__ TransportAddress ;


 int set_addr (struct sk_buff*,unsigned int,unsigned char**,int,int ,int ,int ) ;

__attribute__((used)) static int set_h225_addr(struct sk_buff *skb, unsigned int protoff,
    unsigned char **data, int dataoff,
    TransportAddress *taddr,
    union nf_inet_addr *addr, __be16 port)
{
 return set_addr(skb, protoff, data, dataoff, taddr->ipAddress.ip,
   addr->ip, port);
}
