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
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 int /*<<< orphan*/  devnet_rename_seq ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(struct net *net, char *name, int ifindex)
{
	struct net_device *dev;
	unsigned int seq;

retry:
	seq = FUNC2(&devnet_rename_seq);
	FUNC3();
	dev = FUNC1(net, ifindex);
	if (!dev) {
		FUNC4();
		return -ENODEV;
	}

	FUNC6(name, dev->name);
	FUNC4();
	if (FUNC5(&devnet_rename_seq, seq)) {
		FUNC0();
		goto retry;
	}

	return 0;
}