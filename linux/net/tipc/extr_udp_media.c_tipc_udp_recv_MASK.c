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
struct udphdr {int dummy; } ;
struct udp_bearer {int /*<<< orphan*/  bearer; } ;
struct tipc_msg {int dummy; } ;
struct tipc_bearer {int /*<<< orphan*/  up; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ LINK_CONFIG ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct tipc_bearer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct udp_bearer* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*,struct tipc_bearer*) ; 
 int FUNC10 (struct tipc_bearer*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct sk_buff *skb)
{
	struct udp_bearer *ub;
	struct tipc_bearer *b;
	struct tipc_msg *hdr;
	int err;

	ub = FUNC5(sk);
	if (!ub) {
		FUNC3("Failed to get UDP bearer reference");
		goto out;
	}
	FUNC6(skb, sizeof(struct udphdr));
	hdr = FUNC0(skb);

	b = FUNC4(ub->bearer);
	if (!b)
		goto out;

	if (b && FUNC8(0, &b->up)) {
		FUNC9(FUNC7(sk), skb, b);
		return 0;
	}

	if (FUNC11(FUNC2(hdr) == LINK_CONFIG)) {
		err = FUNC10(b, skb);
		if (err)
			goto out;
	}

out:
	FUNC1(skb);
	return 0;
}