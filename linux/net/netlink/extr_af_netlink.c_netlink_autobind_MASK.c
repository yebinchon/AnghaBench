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
struct sock {size_t sk_protocol; } ;
struct netlink_table {int dummy; } ;
struct net {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EBUSY ; 
 int S32_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_table*,int,struct net*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct sock*,int) ; 
 struct netlink_table* nl_table ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct net* FUNC6 (struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC6(sk);
	struct netlink_table *table = &nl_table[sk->sk_protocol];
	s32 portid = FUNC7(current);
	int err;
	s32 rover = -4096;
	bool ok;

retry:
	FUNC1();
	FUNC4();
	ok = !FUNC0(table, portid, net);
	FUNC5();
	if (!ok) {
		/* Bind collision, search negative portid values. */
		if (rover == -4096)
			/* rover will be in range [S32_MIN, -4097] */
			rover = S32_MIN + FUNC3(-4096 - S32_MIN);
		else if (rover >= -4096)
			rover = -4097;
		portid = rover--;
		goto retry;
	}

	err = FUNC2(sk, portid);
	if (err == -EADDRINUSE)
		goto retry;

	/* If 2 threads race to autobind, that is fine.  */
	if (err == -EBUSY)
		err = 0;

	return err;
}