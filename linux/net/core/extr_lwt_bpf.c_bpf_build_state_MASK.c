#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {scalar_t__ headroom; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct bpf_lwt {unsigned int family; int /*<<< orphan*/  xmit; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 unsigned int AF_INET ; 
 unsigned int AF_INET6 ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_LWT_IN ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_LWT_OUT ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_LWT_XMIT ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  LWTUNNEL_ENCAP_BPF ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_INPUT_REDIRECT ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_OUTPUT_REDIRECT ; 
 int /*<<< orphan*/  LWTUNNEL_STATE_XMIT_REDIRECT ; 
 size_t LWT_BPF_IN ; 
 int /*<<< orphan*/  LWT_BPF_MAX ; 
 scalar_t__ LWT_BPF_MAX_HEADROOM ; 
 size_t LWT_BPF_OUT ; 
 size_t LWT_BPF_XMIT ; 
 size_t LWT_BPF_XMIT_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (struct lwtunnel_state*) ; 
 struct bpf_lwt* FUNC1 (struct lwtunnel_state*) ; 
 int /*<<< orphan*/  bpf_nl_policy ; 
 int FUNC2 (struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lwtunnel_state*) ; 
 struct lwtunnel_state* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC7(struct nlattr *nla,
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

	ret = FUNC6(tb, LWT_BPF_MAX, nla, bpf_nl_policy,
					  extack);
	if (ret < 0)
		return ret;

	if (!tb[LWT_BPF_IN] && !tb[LWT_BPF_OUT] && !tb[LWT_BPF_XMIT])
		return -EINVAL;

	newts = FUNC4(sizeof(*bpf));
	if (!newts)
		return -ENOMEM;

	newts->type = LWTUNNEL_ENCAP_BPF;
	bpf = FUNC1(newts);

	if (tb[LWT_BPF_IN]) {
		newts->flags |= LWTUNNEL_STATE_INPUT_REDIRECT;
		ret = FUNC2(tb[LWT_BPF_IN], &bpf->in,
				     BPF_PROG_TYPE_LWT_IN);
		if (ret  < 0)
			goto errout;
	}

	if (tb[LWT_BPF_OUT]) {
		newts->flags |= LWTUNNEL_STATE_OUTPUT_REDIRECT;
		ret = FUNC2(tb[LWT_BPF_OUT], &bpf->out,
				     BPF_PROG_TYPE_LWT_OUT);
		if (ret < 0)
			goto errout;
	}

	if (tb[LWT_BPF_XMIT]) {
		newts->flags |= LWTUNNEL_STATE_XMIT_REDIRECT;
		ret = FUNC2(tb[LWT_BPF_XMIT], &bpf->xmit,
				     BPF_PROG_TYPE_LWT_XMIT);
		if (ret < 0)
			goto errout;
	}

	if (tb[LWT_BPF_XMIT_HEADROOM]) {
		u32 headroom = FUNC5(tb[LWT_BPF_XMIT_HEADROOM]);

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
	FUNC0(newts);
	FUNC3(newts);
	return ret;
}