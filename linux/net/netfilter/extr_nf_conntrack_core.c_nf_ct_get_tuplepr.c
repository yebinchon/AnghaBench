
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct net {int dummy; } ;


 int get_l4proto (struct sk_buff const*,unsigned int,int ,int *) ;
 int nf_ct_get_tuple (struct sk_buff const*,unsigned int,int,int ,int ,struct net*,struct nf_conntrack_tuple*) ;

bool nf_ct_get_tuplepr(const struct sk_buff *skb, unsigned int nhoff,
         u_int16_t l3num,
         struct net *net, struct nf_conntrack_tuple *tuple)
{
 u8 protonum;
 int protoff;

 protoff = get_l4proto(skb, nhoff, l3num, &protonum);
 if (protoff <= 0)
  return 0;

 return nf_ct_get_tuple(skb, nhoff, protoff, l3num, protonum, net, tuple);
}
