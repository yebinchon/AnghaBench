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
struct socket {int dummy; } ;
struct sock_xprt {struct file* file; } ;
struct rpc_xprt {int /*<<< orphan*/  xprt_net; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct socket* FUNC0 (struct file*) ; 
 struct socket* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,struct socket**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 struct file* FUNC5 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int FUNC7 (struct sock_xprt*,struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

__attribute__((used)) static struct socket *FUNC10(struct rpc_xprt *xprt,
		struct sock_xprt *transport, int family, int type,
		int protocol, bool reuseport)
{
	struct file *filp;
	struct socket *sock;
	int err;

	err = FUNC3(xprt->xprt_net, family, type, protocol, &sock, 1);
	if (err < 0) {
		FUNC4("RPC:       can't create %d transport socket (%d).\n",
				protocol, -err);
		goto out;
	}
	FUNC8(family, sock);

	if (reuseport)
		FUNC9(sock);

	err = FUNC7(transport, sock);
	if (err) {
		FUNC6(sock);
		goto out;
	}

	filp = FUNC5(sock, O_NONBLOCK, NULL);
	if (FUNC2(filp))
		return FUNC0(filp);
	transport->file = filp;

	return sock;
out:
	return FUNC1(err);
}