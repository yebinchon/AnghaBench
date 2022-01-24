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
typedef  int /*<<< orphan*/  uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_satype; int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;
struct pfkey_sock {int promisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ALL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pfkey_sock* FUNC1 (struct sock*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct pfkey_sock *pfk = FUNC1(sk);
	int satype = hdr->sadb_msg_satype;
	bool reset_errno = false;

	if (hdr->sadb_msg_len == (sizeof(*hdr) / sizeof(uint64_t))) {
		reset_errno = true;
		if (satype != 0 && satype != 1)
			return -EINVAL;
		pfk->promisc = satype;
	}
	if (reset_errno && FUNC3(skb))
		skb = FUNC4(skb, GFP_KERNEL);
	else
		skb = FUNC2(skb, GFP_KERNEL);

	if (reset_errno && skb) {
		struct sadb_msg *new_hdr = (struct sadb_msg *) skb->data;
		new_hdr->sadb_msg_errno = 0;
	}

	FUNC0(skb, GFP_KERNEL, BROADCAST_ALL, NULL, FUNC5(sk));
	return 0;
}