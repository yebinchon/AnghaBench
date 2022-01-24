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
struct rtentry {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct fib_table {int dummy; } ;
struct fib_config {int /*<<< orphan*/  fc_mx; int /*<<< orphan*/  fc_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int EPERM ; 
 int ESRCH ; 
#define  SIOCADDRT 129 
#define  SIOCDELRT 128 
 struct fib_table* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct fib_table* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,struct fib_table*,struct fib_config*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net*,struct fib_table*,struct fib_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,unsigned int,struct rtentry*,struct fib_config*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct net *net, unsigned int cmd, struct rtentry *rt)
{
	struct fib_config cfg;
	int err;

	switch (cmd) {
	case SIOCADDRT:		/* Add a route */
	case SIOCDELRT:		/* Delete a route */
		if (!FUNC5(net->user_ns, CAP_NET_ADMIN))
			return -EPERM;

		FUNC7();
		err = FUNC6(net, cmd, rt, &cfg);
		if (err == 0) {
			struct fib_table *tb;

			if (cmd == SIOCDELRT) {
				tb = FUNC0(net, cfg.fc_table);
				if (tb)
					err = FUNC2(net, tb, &cfg,
							       NULL);
				else
					err = -ESRCH;
			} else {
				tb = FUNC1(net, cfg.fc_table);
				if (tb)
					err = FUNC3(net, tb,
							       &cfg, NULL);
				else
					err = -ENOBUFS;
			}

			/* allocated by rtentry_to_fib_config() */
			FUNC4(cfg.fc_mx);
		}
		FUNC8();
		return err;
	}
	return -EINVAL;
}