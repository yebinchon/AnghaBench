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
struct sock {int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_v6_daddr; int /*<<< orphan*/  sk_protocol; } ;
struct ipv6_pinfo {int /*<<< orphan*/  dst_cookie; int /*<<< orphan*/  opt; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  saddr; } ;
struct inet_sock {int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_sport; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_proto; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct in6_addr* FUNC3 (struct flowi6*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi6*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 struct dst_entry* FUNC7 (struct sock*,struct flowi6*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry *FUNC14(struct sock *sk,
						struct flowi6 *fl6)
{
	struct inet_sock *inet = FUNC6(sk);
	struct ipv6_pinfo *np = FUNC5(sk);
	struct in6_addr *final_p, final;
	struct dst_entry *dst;

	FUNC9(fl6, 0, sizeof(*fl6));
	fl6->flowi6_proto = sk->sk_protocol;
	fl6->daddr = sk->sk_v6_daddr;
	fl6->saddr = np->saddr;
	fl6->flowlabel = np->flow_label;
	FUNC0(sk, fl6->flowlabel);
	fl6->flowi6_oif = sk->sk_bound_dev_if;
	fl6->flowi6_mark = sk->sk_mark;
	fl6->fl6_sport = inet->inet_sport;
	fl6->fl6_dport = inet->inet_dport;
	fl6->flowi6_uid = sk->sk_uid;
	FUNC13(sk, FUNC4(fl6));

	FUNC11();
	final_p = FUNC3(fl6, FUNC10(np->opt), &final);
	FUNC12();

	dst = FUNC2(sk, np->dst_cookie);
	if (!dst) {
		dst = FUNC7(sk, fl6, final_p);

		if (!FUNC1(dst))
			FUNC8(sk, dst, NULL, NULL);
	}
	return dst;
}