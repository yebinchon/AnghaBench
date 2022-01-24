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
typedef  void* u_char ;
struct sock {scalar_t__ sk_family; } ;
struct ipv6_pinfo {void* mcast_hops; } ;
struct inet_sock {void* mc_ttl; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, u_char ttl)
{
	struct inet_sock *inet = FUNC1(sk);

	/* setsockopt(sock, SOL_IP, IP_MULTICAST_TTL, &ttl, sizeof(ttl)); */
	FUNC2(sk);
	inet->mc_ttl = ttl;
#ifdef CONFIG_IP_VS_IPV6
	if (sk->sk_family == AF_INET6) {
		struct ipv6_pinfo *np = inet6_sk(sk);

		/* IPV6_MULTICAST_HOPS */
		np->mcast_hops = ttl;
	}
#endif
	FUNC3(sk);
}