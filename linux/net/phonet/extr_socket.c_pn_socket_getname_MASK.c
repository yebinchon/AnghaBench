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
struct socket {struct sock* sk; } ;
struct sockaddr_pn {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct pn_sock {int /*<<< orphan*/  sobject; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PHONET ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 struct pn_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_pn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *addr,
				int peer)
{
	struct sock *sk = sock->sk;
	struct pn_sock *pn = FUNC1(sk);

	FUNC0(addr, 0, sizeof(struct sockaddr_pn));
	addr->sa_family = AF_PHONET;
	if (!peer) /* Race with bind() here is userland's problem. */
		FUNC2((struct sockaddr_pn *)addr,
					pn->sobject);

	return sizeof(struct sockaddr_pn);
}