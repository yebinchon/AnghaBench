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
struct sock {int /*<<< orphan*/  sk_v6_daddr; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  UDP_MIB_RCVBUFERRORS ; 
 int FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_buff *skb)
{
	int rc;

	if (!FUNC3(&sk->sk_v6_daddr)) {
		FUNC9(sk, skb);
		FUNC6(sk, skb);
		FUNC5(sk);
	} else {
		FUNC7(sk, skb);
	}

	rc = FUNC2(sk, skb);
	if (rc < 0) {
		int is_udplite = FUNC0(sk);

		/* Note that an ENOMEM error is charged twice */
		if (rc == -ENOMEM)
			FUNC1(FUNC8(sk),
					 UDP_MIB_RCVBUFERRORS, is_udplite);
		FUNC1(FUNC8(sk), UDP_MIB_INERRORS, is_udplite);
		FUNC4(skb);
		return -1;
	}

	return 0;
}