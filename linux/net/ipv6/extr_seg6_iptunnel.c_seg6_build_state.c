
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_lwt {int tuninfo; int cache; } ;
struct seg6_iptunnel_encap {int mode; int srh; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int headroom; int flags; int type; } ;
struct ipv6_sr_hdr {int dummy; } ;
struct in6_addr {int dummy; } ;


 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int LWTUNNEL_ENCAP_SEG6 ;
 int LWTUNNEL_STATE_INPUT_REDIRECT ;
 int LWTUNNEL_STATE_OUTPUT_REDIRECT ;
 int SEG6_IPTUNNEL_MAX ;
 size_t SEG6_IPTUNNEL_SRH ;



 int dst_cache_init (int *,int ) ;
 int kfree (struct lwtunnel_state*) ;
 struct lwtunnel_state* lwtunnel_state_alloc (int) ;
 int memcpy (int *,struct seg6_iptunnel_encap*,int) ;
 struct seg6_iptunnel_encap* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int seg6_iptunnel_policy ;
 int seg6_lwt_headroom (struct seg6_iptunnel_encap*) ;
 struct seg6_lwt* seg6_lwt_lwtunnel (struct lwtunnel_state*) ;
 int seg6_validate_srh (int ,int) ;

__attribute__((used)) static int seg6_build_state(struct nlattr *nla,
       unsigned int family, const void *cfg,
       struct lwtunnel_state **ts,
       struct netlink_ext_ack *extack)
{
 struct nlattr *tb[SEG6_IPTUNNEL_MAX + 1];
 struct seg6_iptunnel_encap *tuninfo;
 struct lwtunnel_state *newts;
 int tuninfo_len, min_size;
 struct seg6_lwt *slwt;
 int err;

 if (family != AF_INET && family != AF_INET6)
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, SEG6_IPTUNNEL_MAX, nla,
       seg6_iptunnel_policy, extack);

 if (err < 0)
  return err;

 if (!tb[SEG6_IPTUNNEL_SRH])
  return -EINVAL;

 tuninfo = nla_data(tb[SEG6_IPTUNNEL_SRH]);
 tuninfo_len = nla_len(tb[SEG6_IPTUNNEL_SRH]);




 min_size = sizeof(*tuninfo) + sizeof(struct ipv6_sr_hdr) +
     sizeof(struct in6_addr);
 if (tuninfo_len < min_size)
  return -EINVAL;

 switch (tuninfo->mode) {
 case 129:
  if (family != AF_INET6)
   return -EINVAL;

  break;
 case 130:
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }


 if (!seg6_validate_srh(tuninfo->srh, tuninfo_len - sizeof(*tuninfo)))
  return -EINVAL;

 newts = lwtunnel_state_alloc(tuninfo_len + sizeof(*slwt));
 if (!newts)
  return -ENOMEM;

 slwt = seg6_lwt_lwtunnel(newts);

 err = dst_cache_init(&slwt->cache, GFP_ATOMIC);
 if (err) {
  kfree(newts);
  return err;
 }

 memcpy(&slwt->tuninfo, tuninfo, tuninfo_len);

 newts->type = LWTUNNEL_ENCAP_SEG6;
 newts->flags |= LWTUNNEL_STATE_INPUT_REDIRECT;

 if (tuninfo->mode != 128)
  newts->flags |= LWTUNNEL_STATE_OUTPUT_REDIRECT;

 newts->headroom = seg6_lwt_headroom(tuninfo);

 *ts = newts;

 return 0;
}
