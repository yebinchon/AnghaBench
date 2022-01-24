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
struct sock {scalar_t__ sk_family; scalar_t__ sk_prot; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int TLSV4 ; 
 int TLSV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ saved_tcpv4_prot ; 
 scalar_t__ saved_tcpv6_prot ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  tcpv4_prot_mutex ; 
 int /*<<< orphan*/  tcpv6_prot_mutex ; 
 int /*<<< orphan*/ * tls_prots ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	int ip_ver = sk->sk_family == AF_INET6 ? TLSV6 : TLSV4;

	/* Build IPv6 TLS whenever the address of tcpv6 _prot changes */
	if (ip_ver == TLSV6 &&
	    FUNC6(sk->sk_prot != FUNC4(&saved_tcpv6_prot))) {
		FUNC2(&tcpv6_prot_mutex);
		if (FUNC1(sk->sk_prot != saved_tcpv6_prot)) {
			FUNC0(tls_prots[TLSV6], sk->sk_prot);
			FUNC5(&saved_tcpv6_prot, sk->sk_prot);
		}
		FUNC3(&tcpv6_prot_mutex);
	}

	if (ip_ver == TLSV4 &&
	    FUNC6(sk->sk_prot != FUNC4(&saved_tcpv4_prot))) {
		FUNC2(&tcpv4_prot_mutex);
		if (FUNC1(sk->sk_prot != saved_tcpv4_prot)) {
			FUNC0(tls_prots[TLSV4], sk->sk_prot);
			FUNC5(&saved_tcpv4_prot, sk->sk_prot);
		}
		FUNC3(&tcpv4_prot_mutex);
	}
}