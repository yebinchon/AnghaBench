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
typedef  int u32 ;
struct xdp_buff {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int XDP_DROP ; 
 int XDP_PASS ; 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct xdp_buff*,struct bpf_prog*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,struct xdp_buff*,struct bpf_prog*) ; 

int FUNC4(struct bpf_prog *xdp_prog, struct sk_buff *skb)
{
	if (xdp_prog) {
		struct xdp_buff xdp;
		u32 act;
		int err;

		act = FUNC2(skb, &xdp, xdp_prog);
		if (act != XDP_PASS) {
			switch (act) {
			case XDP_REDIRECT:
				err = FUNC3(skb->dev, skb,
							      &xdp, xdp_prog);
				if (err)
					goto out_redir;
				break;
			case XDP_TX:
				FUNC0(skb, xdp_prog);
				break;
			}
			return XDP_DROP;
		}
	}
	return XDP_PASS;
out_redir:
	FUNC1(skb);
	return XDP_DROP;
}