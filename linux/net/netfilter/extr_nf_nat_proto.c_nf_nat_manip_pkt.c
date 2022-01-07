
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ src; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_3__ {int tuple; } ;




 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int WARN_ON_ONCE (int) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,int *) ;
 int nf_nat_ipv4_manip_pkt (struct sk_buff*,int ,struct nf_conntrack_tuple*,int) ;
 int nf_nat_ipv6_manip_pkt (struct sk_buff*,int ,struct nf_conntrack_tuple*,int) ;

unsigned int nf_nat_manip_pkt(struct sk_buff *skb, struct nf_conn *ct,
         enum nf_nat_manip_type mtype,
         enum ip_conntrack_dir dir)
{
 struct nf_conntrack_tuple target;


 nf_ct_invert_tuple(&target, &ct->tuplehash[!dir].tuple);

 switch (target.src.l3num) {
 case 128:
  if (nf_nat_ipv6_manip_pkt(skb, 0, &target, mtype))
   return NF_ACCEPT;
  break;
 case 129:
  if (nf_nat_ipv4_manip_pkt(skb, 0, &target, mtype))
   return NF_ACCEPT;
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return NF_DROP;
}
