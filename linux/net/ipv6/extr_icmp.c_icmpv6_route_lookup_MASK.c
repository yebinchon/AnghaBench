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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  daddr; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 int EPERM ; 
 struct dst_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  XFRM_LOOKUP_ICMP ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi6*) ; 
 int FUNC5 (struct net*,struct sock*,struct dst_entry**,struct flowi6*) ; 
 scalar_t__ FUNC6 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC9 (struct net*,struct dst_entry*,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry *FUNC10(struct net *net,
					     struct sk_buff *skb,
					     struct sock *sk,
					     struct flowi6 *fl6)
{
	struct dst_entry *dst, *dst2;
	struct flowi6 fl2;
	int err;

	err = FUNC5(net, sk, &dst, fl6);
	if (err)
		return FUNC0(err);

	/*
	 * We won't send icmp if the destination is known
	 * anycast.
	 */
	if (FUNC6(dst, &fl6->daddr)) {
		FUNC7("icmp6_send: acast source\n");
		FUNC3(dst);
		return FUNC0(-EINVAL);
	}

	/* No need to clone since we're just using its address. */
	dst2 = dst;

	dst = FUNC9(net, dst, FUNC4(fl6), sk, 0);
	if (!FUNC1(dst)) {
		if (dst != dst2)
			return dst;
	} else {
		if (FUNC2(dst) == -EPERM)
			dst = NULL;
		else
			return dst;
	}

	err = FUNC8(skb, FUNC4(&fl2), AF_INET6);
	if (err)
		goto relookup_failed;

	err = FUNC5(net, sk, &dst2, &fl2);
	if (err)
		goto relookup_failed;

	dst2 = FUNC9(net, dst2, FUNC4(&fl2), sk, XFRM_LOOKUP_ICMP);
	if (!FUNC1(dst2)) {
		FUNC3(dst);
		dst = dst2;
	} else {
		err = FUNC2(dst2);
		if (err == -EPERM) {
			FUNC3(dst);
			return dst2;
		} else
			goto relookup_failed;
	}

relookup_failed:
	if (dst)
		return dst;
	return FUNC0(err);
}