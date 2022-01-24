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
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct net init_net ; 
 int FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct net *net)
{
	int status;

	/* XXX: The legacy code won't work in a container */
	if (net != &init_net) {
		FUNC3("NFSD: attempt to initialize legacy client tracking in a container ignored.\n");
		return -EINVAL;
	}

	status = FUNC0(net);
	if (status)
		return status;

	status = FUNC2(net);
	if (status)
		goto err;
	FUNC4("NFSD: Using legacy client tracking operations.\n");
	return 0;

err:
	FUNC1(net);
	return status;
}