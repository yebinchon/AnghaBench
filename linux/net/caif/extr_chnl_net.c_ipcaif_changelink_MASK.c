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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct chnl_net {int /*<<< orphan*/  conn_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,int /*<<< orphan*/ *) ; 
 struct chnl_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct nlattr *tb[],
			     struct nlattr *data[],
			     struct netlink_ext_ack *extack)
{
	struct chnl_net *caifdev;
	FUNC0();
	caifdev = FUNC2(dev);
	FUNC1(data, &caifdev->conn_req);
	FUNC3(dev);
	return 0;
}