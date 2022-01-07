
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int headroom; int srh; } ;
struct nlattr {int dummy; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SEG6_LOCAL_SRH ;
 int kmemdup (struct ipv6_sr_hdr*,int,int ) ;
 struct ipv6_sr_hdr* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int seg6_validate_srh (struct ipv6_sr_hdr*,int) ;

__attribute__((used)) static int parse_nla_srh(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 struct ipv6_sr_hdr *srh;
 int len;

 srh = nla_data(attrs[SEG6_LOCAL_SRH]);
 len = nla_len(attrs[SEG6_LOCAL_SRH]);


 if (len < sizeof(*srh) + sizeof(struct in6_addr))
  return -EINVAL;

 if (!seg6_validate_srh(srh, len))
  return -EINVAL;

 slwt->srh = kmemdup(srh, len, GFP_KERNEL);
 if (!slwt->srh)
  return -ENOMEM;

 slwt->headroom += len;

 return 0;
}
