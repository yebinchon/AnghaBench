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
 int FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int FUNC4 (struct net*) ; 

int
FUNC5(struct net *net)
{
	int rv;

	rv = FUNC2(net);
	if (rv)
		return rv;
	rv = FUNC4(net);
	if (rv)
		goto out1;
	rv = FUNC0(net);
	if (rv)
		goto out2;
	return 0;
out2:
	FUNC1(net);
out1:
	FUNC3(net);
	return rv;
}