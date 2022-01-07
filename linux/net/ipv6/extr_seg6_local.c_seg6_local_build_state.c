
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {struct lwtunnel_state* srh; int headroom; int action; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int headroom; int flags; int type; } ;


 unsigned int AF_INET6 ;
 int EINVAL ;
 int ENOMEM ;
 int LWTUNNEL_ENCAP_SEG6_LOCAL ;
 int LWTUNNEL_STATE_INPUT_REDIRECT ;
 size_t SEG6_LOCAL_ACTION ;
 int SEG6_LOCAL_MAX ;
 int kfree (struct lwtunnel_state*) ;
 struct lwtunnel_state* lwtunnel_state_alloc (int) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int parse_nla_action (struct nlattr**,struct seg6_local_lwt*) ;
 struct seg6_local_lwt* seg6_local_lwtunnel (struct lwtunnel_state*) ;
 int seg6_local_policy ;

__attribute__((used)) static int seg6_local_build_state(struct nlattr *nla, unsigned int family,
      const void *cfg, struct lwtunnel_state **ts,
      struct netlink_ext_ack *extack)
{
 struct nlattr *tb[SEG6_LOCAL_MAX + 1];
 struct lwtunnel_state *newts;
 struct seg6_local_lwt *slwt;
 int err;

 if (family != AF_INET6)
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, SEG6_LOCAL_MAX, nla,
       seg6_local_policy, extack);

 if (err < 0)
  return err;

 if (!tb[SEG6_LOCAL_ACTION])
  return -EINVAL;

 newts = lwtunnel_state_alloc(sizeof(*slwt));
 if (!newts)
  return -ENOMEM;

 slwt = seg6_local_lwtunnel(newts);
 slwt->action = nla_get_u32(tb[SEG6_LOCAL_ACTION]);

 err = parse_nla_action(tb, slwt);
 if (err < 0)
  goto out_free;

 newts->type = LWTUNNEL_ENCAP_SEG6_LOCAL;
 newts->flags = LWTUNNEL_STATE_INPUT_REDIRECT;
 newts->headroom = slwt->headroom;

 *ts = newts;

 return 0;

out_free:
 kfree(slwt->srh);
 kfree(newts);
 return err;
}
