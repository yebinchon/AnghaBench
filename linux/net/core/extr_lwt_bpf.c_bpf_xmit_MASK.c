#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct dst_entry {int /*<<< orphan*/  lwtstate; } ;
struct TYPE_2__ {scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ xmit; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  BPF_LWT_REROUTE 130 
#define  BPF_OK 129 
#define  BPF_REDIRECT 128 
 int /*<<< orphan*/  CAN_REDIRECT ; 
 int EINVAL ; 
 int LWTUNNEL_XMIT_CONTINUE ; 
 int LWTUNNEL_XMIT_DONE ; 
 struct bpf_lwt* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,TYPE_1__*,struct dst_entry*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC4(skb);
	struct bpf_lwt *bpf;

	bpf = FUNC0(dst->lwtstate);
	if (bpf->xmit.prog) {
		__be16 proto = skb->protocol;
		int ret;

		ret = FUNC3(skb, &bpf->xmit, dst, CAN_REDIRECT);
		switch (ret) {
		case BPF_OK:
			/* If the header changed, e.g. via bpf_lwt_push_encap,
			 * BPF_LWT_REROUTE below should have been used if the
			 * protocol was also changed.
			 */
			if (skb->protocol != proto) {
				FUNC2(skb);
				return -EINVAL;
			}
			/* If the header was expanded, headroom might be too
			 * small for L2 header to come, expand as needed.
			 */
			ret = FUNC6(skb);
			if (FUNC5(ret))
				return ret;

			return LWTUNNEL_XMIT_CONTINUE;
		case BPF_REDIRECT:
			return LWTUNNEL_XMIT_DONE;
		case BPF_LWT_REROUTE:
			return FUNC1(skb);
		default:
			return ret;
		}
	}

	return LWTUNNEL_XMIT_CONTINUE;
}