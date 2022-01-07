
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {scalar_t__ headroom; int flags; int type; } ;
struct bpf_lwt {unsigned int family; int xmit; int out; int in; } ;


 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int BPF_PROG_TYPE_LWT_IN ;
 int BPF_PROG_TYPE_LWT_OUT ;
 int BPF_PROG_TYPE_LWT_XMIT ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int LWTUNNEL_ENCAP_BPF ;
 int LWTUNNEL_STATE_INPUT_REDIRECT ;
 int LWTUNNEL_STATE_OUTPUT_REDIRECT ;
 int LWTUNNEL_STATE_XMIT_REDIRECT ;
 size_t LWT_BPF_IN ;
 int LWT_BPF_MAX ;
 scalar_t__ LWT_BPF_MAX_HEADROOM ;
 size_t LWT_BPF_OUT ;
 size_t LWT_BPF_XMIT ;
 size_t LWT_BPF_XMIT_HEADROOM ;
 int bpf_destroy_state (struct lwtunnel_state*) ;
 struct bpf_lwt* bpf_lwt_lwtunnel (struct lwtunnel_state*) ;
 int bpf_nl_policy ;
 int bpf_parse_prog (struct nlattr*,int *,int ) ;
 int kfree (struct lwtunnel_state*) ;
 struct lwtunnel_state* lwtunnel_state_alloc (int) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int bpf_build_state(struct nlattr *nla,
      unsigned int family, const void *cfg,
      struct lwtunnel_state **ts,
      struct netlink_ext_ack *extack)
{
 struct nlattr *tb[LWT_BPF_MAX + 1];
 struct lwtunnel_state *newts;
 struct bpf_lwt *bpf;
 int ret;

 if (family != AF_INET && family != AF_INET6)
  return -EAFNOSUPPORT;

 ret = nla_parse_nested_deprecated(tb, LWT_BPF_MAX, nla, bpf_nl_policy,
       extack);
 if (ret < 0)
  return ret;

 if (!tb[LWT_BPF_IN] && !tb[LWT_BPF_OUT] && !tb[LWT_BPF_XMIT])
  return -EINVAL;

 newts = lwtunnel_state_alloc(sizeof(*bpf));
 if (!newts)
  return -ENOMEM;

 newts->type = LWTUNNEL_ENCAP_BPF;
 bpf = bpf_lwt_lwtunnel(newts);

 if (tb[LWT_BPF_IN]) {
  newts->flags |= LWTUNNEL_STATE_INPUT_REDIRECT;
  ret = bpf_parse_prog(tb[LWT_BPF_IN], &bpf->in,
         BPF_PROG_TYPE_LWT_IN);
  if (ret < 0)
   goto errout;
 }

 if (tb[LWT_BPF_OUT]) {
  newts->flags |= LWTUNNEL_STATE_OUTPUT_REDIRECT;
  ret = bpf_parse_prog(tb[LWT_BPF_OUT], &bpf->out,
         BPF_PROG_TYPE_LWT_OUT);
  if (ret < 0)
   goto errout;
 }

 if (tb[LWT_BPF_XMIT]) {
  newts->flags |= LWTUNNEL_STATE_XMIT_REDIRECT;
  ret = bpf_parse_prog(tb[LWT_BPF_XMIT], &bpf->xmit,
         BPF_PROG_TYPE_LWT_XMIT);
  if (ret < 0)
   goto errout;
 }

 if (tb[LWT_BPF_XMIT_HEADROOM]) {
  u32 headroom = nla_get_u32(tb[LWT_BPF_XMIT_HEADROOM]);

  if (headroom > LWT_BPF_MAX_HEADROOM) {
   ret = -ERANGE;
   goto errout;
  }

  newts->headroom = headroom;
 }

 bpf->family = family;
 *ts = newts;

 return 0;

errout:
 bpf_destroy_state(newts);
 kfree(newts);
 return ret;
}
