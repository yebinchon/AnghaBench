
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct mpls_shim_hdr {int dummy; } ;


 int EMSGSIZE ;
 struct mpls_shim_hdr mpls_entry_encode (int const,int ,int ,int) ;
 struct mpls_shim_hdr* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int,int) ;

int nla_put_labels(struct sk_buff *skb, int attrtype,
     u8 labels, const u32 label[])
{
 struct nlattr *nla;
 struct mpls_shim_hdr *nla_label;
 bool bos;
 int i;
 nla = nla_reserve(skb, attrtype, labels*4);
 if (!nla)
  return -EMSGSIZE;

 nla_label = nla_data(nla);
 bos = 1;
 for (i = labels - 1; i >= 0; i--) {
  nla_label[i] = mpls_entry_encode(label[i], 0, 0, bos);
  bos = 0;
 }

 return 0;
}
