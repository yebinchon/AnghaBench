#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  prog; } ;
struct seg6_local_lwt {TYPE_1__ bpf; } ;
struct seg6_bpf_srh_state {int hdrlen; int valid; struct ipv6_sr_hdr* srh; } ;
struct ipv6_sr_hdr {int hdrlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
#define  BPF_DROP 130 
#define  BPF_OK 129 
#define  BPF_REDIRECT 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_sr_hdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 struct ipv6_sr_hdr* FUNC4 (struct sk_buff*) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  seg6_bpf_srh_states ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct seg6_bpf_srh_state* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb,
				struct seg6_local_lwt *slwt)
{
	struct seg6_bpf_srh_state *srh_state =
		FUNC14(&seg6_bpf_srh_states);
	struct ipv6_sr_hdr *srh;
	int ret;

	srh = FUNC4(skb);
	if (!srh) {
		FUNC6(skb);
		return -EINVAL;
	}
	FUNC0(srh, &FUNC5(skb)->daddr);

	/* preempt_disable is needed to protect the per-CPU buffer srh_state,
	 * which is also accessed by the bpf_lwt_seg6_* helpers
	 */
	FUNC8();
	srh_state->srh = srh;
	srh_state->hdrlen = srh->hdrlen << 3;
	srh_state->valid = true;

	FUNC10();
	FUNC1(skb);
	ret = FUNC2(slwt->bpf.prog, skb);
	FUNC11();

	switch (ret) {
	case BPF_OK:
	case BPF_REDIRECT:
		break;
	case BPF_DROP:
		goto drop;
	default:
		FUNC7("bpf-seg6local: Illegal return value %u\n", ret);
		goto drop;
	}

	if (srh_state->srh && !FUNC12(skb))
		goto drop;

	FUNC9();
	if (ret != BPF_REDIRECT)
		FUNC13(skb, NULL, 0);

	return FUNC3(skb);

drop:
	FUNC9();
	FUNC6(skb);
	return -EINVAL;
}