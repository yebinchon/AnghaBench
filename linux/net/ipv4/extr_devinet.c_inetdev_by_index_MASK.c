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
struct net_device {int /*<<< orphan*/  ip_ptr; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 struct in_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct in_device *FUNC4(struct net *net, int ifindex)
{
	struct net_device *dev;
	struct in_device *in_dev = NULL;

	FUNC2();
	dev = FUNC0(net, ifindex);
	if (dev)
		in_dev = FUNC1(dev->ip_ptr);
	FUNC3();
	return in_dev;
}