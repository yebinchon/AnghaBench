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
struct sock {int dummy; } ;
struct raw_sock {int /*<<< orphan*/  count; int /*<<< orphan*/  filter; int /*<<< orphan*/  err_mask; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct net_device*,struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,struct net_device*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct raw_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct net_device *dev,
				 struct sock *sk)
{
	struct raw_sock *ro = FUNC3(sk);
	int err;

	err = FUNC2(net, dev, sk, ro->filter, ro->count);
	if (!err) {
		err = FUNC1(net, dev, sk, ro->err_mask);
		if (err)
			FUNC0(net, dev, sk, ro->filter,
					    ro->count);
	}

	return err;
}