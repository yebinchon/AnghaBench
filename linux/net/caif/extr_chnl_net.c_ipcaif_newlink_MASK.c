#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;
struct TYPE_5__ {scalar_t__ connection_id; } ;
struct TYPE_6__ {TYPE_1__ dgm; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  protocol; TYPE_3__ sockaddr; } ;
struct chnl_net {TYPE_4__ conn_req; int /*<<< orphan*/  list_field; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CAIFPROTO_DATAGRAM_LOOP ; 
 scalar_t__ UNDEF_CONNID ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,TYPE_4__*) ; 
 int /*<<< orphan*/  chnl_net_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct chnl_net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net *src_net, struct net_device *dev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	int ret;
	struct chnl_net *caifdev;
	FUNC0();
	caifdev = FUNC3(dev);
	FUNC1(data, &caifdev->conn_req);

	ret = FUNC5(dev);
	if (ret)
		FUNC4("device rtml registration failed\n");
	else
		FUNC2(&caifdev->list_field, &chnl_net_list);

	/* Use ifindex as connection id, and use loopback channel default. */
	if (caifdev->conn_req.sockaddr.u.dgm.connection_id == UNDEF_CONNID) {
		caifdev->conn_req.sockaddr.u.dgm.connection_id = dev->ifindex;
		caifdev->conn_req.protocol = CAIFPROTO_DATAGRAM_LOOP;
	}
	return ret;
}