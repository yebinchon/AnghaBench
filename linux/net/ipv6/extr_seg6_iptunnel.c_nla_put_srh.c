
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_iptunnel_encap {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int SEG6_IPTUN_ENCAP_SIZE (struct seg6_iptunnel_encap*) ;
 int memcpy (struct seg6_iptunnel_encap*,struct seg6_iptunnel_encap*,int) ;
 struct seg6_iptunnel_encap* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int,int) ;

__attribute__((used)) static int nla_put_srh(struct sk_buff *skb, int attrtype,
         struct seg6_iptunnel_encap *tuninfo)
{
 struct seg6_iptunnel_encap *data;
 struct nlattr *nla;
 int len;

 len = SEG6_IPTUN_ENCAP_SIZE(tuninfo);

 nla = nla_reserve(skb, attrtype, len);
 if (!nla)
  return -EMSGSIZE;

 data = nla_data(nla);
 memcpy(data, tuninfo, len);

 return 0;
}
