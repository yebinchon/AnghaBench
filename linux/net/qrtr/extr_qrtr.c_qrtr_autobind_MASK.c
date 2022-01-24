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
struct sockaddr_qrtr {scalar_t__ sq_port; int /*<<< orphan*/  sq_node; int /*<<< orphan*/  sq_family; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int FUNC0 (struct socket*,struct sockaddr_qrtr*,int) ; 
 int /*<<< orphan*/  qrtr_local_nid ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct sockaddr_qrtr addr;

	if (!FUNC1(sk, SOCK_ZAPPED))
		return 0;

	addr.sq_family = AF_QIPCRTR;
	addr.sq_node = qrtr_local_nid;
	addr.sq_port = 0;

	return FUNC0(sock, &addr, 1);
}