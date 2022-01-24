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
struct ipv6_pinfo {int /*<<< orphan*/  saddr; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct sock *sk, struct dst_entry *dst,
			   const struct flowi6 *fl6)
{
#ifdef CONFIG_IPV6_SUBTREES
	struct ipv6_pinfo *np = inet6_sk(sk);
#endif

	FUNC1(sk, dst,
		      FUNC2(&fl6->daddr, &sk->sk_v6_daddr) ?
		      &sk->sk_v6_daddr : NULL,
#ifdef CONFIG_IPV6_SUBTREES
		      ipv6_addr_equal(&fl6->saddr, &np->saddr) ?
		      &np->saddr :
#endif
		      NULL);
}