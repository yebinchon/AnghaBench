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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct sock_reuseport {struct sock** socks; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 size_t FUNC1 (struct bpf_prog*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sock *FUNC7(struct sock_reuseport *reuse, u16 socks,
				   struct bpf_prog *prog, struct sk_buff *skb,
				   int hdr_len)
{
	struct sk_buff *nskb = NULL;
	u32 index;

	if (FUNC6(skb)) {
		nskb = FUNC5(skb, GFP_ATOMIC);
		if (!nskb)
			return NULL;
		skb = nskb;
	}

	/* temporarily advance data past protocol header */
	if (!FUNC4(skb, hdr_len)) {
		FUNC3(nskb);
		return NULL;
	}
	index = FUNC1(prog, skb);
	FUNC0(skb, hdr_len);

	FUNC2(nskb);

	if (index >= socks)
		return NULL;

	return reuse->socks[index];
}