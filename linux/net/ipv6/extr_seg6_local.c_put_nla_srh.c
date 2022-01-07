
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct seg6_local_lwt {struct ipv6_sr_hdr* srh; } ;
struct nlattr {int dummy; } ;
struct ipv6_sr_hdr {int hdrlen; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_SRH ;
 int memcpy (int ,struct ipv6_sr_hdr*,int) ;
 int nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int put_nla_srh(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 struct ipv6_sr_hdr *srh;
 struct nlattr *nla;
 int len;

 srh = slwt->srh;
 len = (srh->hdrlen + 1) << 3;

 nla = nla_reserve(skb, SEG6_LOCAL_SRH, len);
 if (!nla)
  return -EMSGSIZE;

 memcpy(nla_data(nla), srh, len);

 return 0;
}
