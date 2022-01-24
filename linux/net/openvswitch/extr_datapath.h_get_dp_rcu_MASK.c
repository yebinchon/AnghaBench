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
struct vport {struct datapath* dp; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 struct vport* FUNC1 (struct net_device*) ; 

__attribute__((used)) static inline struct datapath *FUNC2(struct net *net, int dp_ifindex)
{
	struct net_device *dev = FUNC0(net, dp_ifindex);

	if (dev) {
		struct vport *vport = FUNC1(dev);

		if (vport)
			return vport->dp;
	}

	return NULL;
}