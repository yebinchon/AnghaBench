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
struct sock {scalar_t__ sk_state; struct dst_entry* sk_rx_dst; } ;
struct sk_buff {scalar_t__ skb_iif; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ rx_dst_ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC12 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 

int FUNC14(struct sock *sk, struct sk_buff *skb)
{
	struct sock *rsk;

	if (sk->sk_state == TCP_ESTABLISHED) { /* Fast path */
		struct dst_entry *dst = sk->sk_rx_dst;

		FUNC6(sk, skb);
		FUNC4(sk, skb);
		if (dst) {
			if (FUNC2(sk)->rx_dst_ifindex != skb->skb_iif ||
			    !dst->ops->check(dst, 0)) {
				FUNC1(dst);
				sk->sk_rx_dst = NULL;
			}
		}
		FUNC10(sk, skb);
		return 0;
	}

	if (FUNC8(skb))
		goto csum_err;

	if (sk->sk_state == TCP_LISTEN) {
		struct sock *nsk = FUNC12(sk, skb);

		if (!nsk)
			goto discard;
		if (nsk != sk) {
			if (FUNC9(sk, nsk, skb)) {
				rsk = nsk;
				goto reset;
			}
			return 0;
		}
	} else
		FUNC6(sk, skb);

	if (FUNC11(sk, skb)) {
		rsk = sk;
		goto reset;
	}
	return 0;

reset:
	FUNC13(rsk, skb);
discard:
	FUNC3(skb);
	/* Be careful here. If this function gets more complicated and
	 * gcc suffers from register pressure on the x86, sk (in %ebx)
	 * might be destroyed here. This current version compiles correctly,
	 * but you have been warned.
	 */
	return 0;

csum_err:
	FUNC0(FUNC5(sk), TCP_MIB_CSUMERRORS);
	FUNC0(FUNC5(sk), TCP_MIB_INERRS);
	goto discard;
}