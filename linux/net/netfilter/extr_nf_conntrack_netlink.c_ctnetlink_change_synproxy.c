
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn_synproxy {void* tsoff; void* its; void* isn; } ;
struct nf_conn {int dummy; } ;


 size_t CTA_SYNPROXY ;
 size_t CTA_SYNPROXY_ISN ;
 size_t CTA_SYNPROXY_ITS ;
 int CTA_SYNPROXY_MAX ;
 size_t CTA_SYNPROXY_TSOFF ;
 int EINVAL ;
 struct nf_conn_synproxy* nfct_synproxy (struct nf_conn*) ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const* const,int ,int *) ;
 void* ntohl (int ) ;
 int synproxy_policy ;

__attribute__((used)) static int ctnetlink_change_synproxy(struct nf_conn *ct,
         const struct nlattr * const cda[])
{
 struct nf_conn_synproxy *synproxy = nfct_synproxy(ct);
 struct nlattr *tb[CTA_SYNPROXY_MAX + 1];
 int err;

 if (!synproxy)
  return 0;

 err = nla_parse_nested_deprecated(tb, CTA_SYNPROXY_MAX,
       cda[CTA_SYNPROXY], synproxy_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (!tb[CTA_SYNPROXY_ISN] ||
     !tb[CTA_SYNPROXY_ITS] ||
     !tb[CTA_SYNPROXY_TSOFF])
  return -EINVAL;

 synproxy->isn = ntohl(nla_get_be32(tb[CTA_SYNPROXY_ISN]));
 synproxy->its = ntohl(nla_get_be32(tb[CTA_SYNPROXY_ITS]));
 synproxy->tsoff = ntohl(nla_get_be32(tb[CTA_SYNPROXY_TSOFF]));

 return 0;
}
