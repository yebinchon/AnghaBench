#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sock {size_t sk_protocol; } ;
struct netlink_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ portid; scalar_t__ bound; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EBUSY ; 
 int EEXIST ; 
 int EOVERFLOW ; 
 int FUNC0 (struct netlink_table*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct netlink_table* nl_table ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, u32 portid)
{
	struct netlink_table *table = &nl_table[sk->sk_protocol];
	int err;

	FUNC1(sk);

	err = FUNC2(sk)->portid == portid ? 0 : -EBUSY;
	if (FUNC2(sk)->bound)
		goto err;

	FUNC2(sk)->portid = portid;
	FUNC5(sk);

	err = FUNC0(table, sk);
	if (err) {
		/* In case the hashtable backend returns with -EBUSY
		 * from here, it must not escape to the caller.
		 */
		if (FUNC7(err == -EBUSY))
			err = -EOVERFLOW;
		if (err == -EEXIST)
			err = -EADDRINUSE;
		FUNC6(sk);
		goto err;
	}

	/* We need to ensure that the socket is hashed and visible. */
	FUNC4();
	FUNC2(sk)->bound = portid;

err:
	FUNC3(sk);
	return err;
}