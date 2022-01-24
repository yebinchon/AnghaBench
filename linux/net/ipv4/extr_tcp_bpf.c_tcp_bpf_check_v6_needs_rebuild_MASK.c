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
struct sock {scalar_t__ sk_family; } ;
struct proto {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 size_t TCP_BPF_IPV6 ; 
 scalar_t__ FUNC0 (int) ; 
 struct proto* FUNC1 (struct proto**) ; 
 int /*<<< orphan*/  FUNC2 (struct proto**,struct proto*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tcp_bpf_prots ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct proto*) ; 
 int /*<<< orphan*/  tcpv6_prot_lock ; 
 struct proto* tcpv6_prot_saved ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct proto *ops)
{
	if (sk->sk_family == AF_INET6 &&
	    FUNC6(ops != FUNC1(&tcpv6_prot_saved))) {
		FUNC3(&tcpv6_prot_lock);
		if (FUNC0(ops != tcpv6_prot_saved)) {
			FUNC5(tcp_bpf_prots[TCP_BPF_IPV6], ops);
			FUNC2(&tcpv6_prot_saved, ops);
		}
		FUNC4(&tcpv6_prot_lock);
	}
}