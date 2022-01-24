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
struct datalink_proto {int (* rcvfunc ) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;int header_length; int /*<<< orphan*/  node; int /*<<< orphan*/  request; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (unsigned char const*) ; 
 struct datalink_proto* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  snap_list ; 
 int /*<<< orphan*/  snap_lock ; 
 int /*<<< orphan*/  snap_request ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct datalink_proto *FUNC6(const unsigned char *desc,
					    int (*rcvfunc)(struct sk_buff *,
							   struct net_device *,
							   struct packet_type *,
							   struct net_device *))
{
	struct datalink_proto *proto = NULL;

	FUNC4(&snap_lock);

	if (FUNC0(desc))
		goto out;

	proto = FUNC1(sizeof(*proto), GFP_ATOMIC);
	if (proto) {
		FUNC3(proto->type, desc, 5);
		proto->rcvfunc		= rcvfunc;
		proto->header_length	= 5 + 3; /* snap + 802.2 */
		proto->request		= snap_request;
		FUNC2(&proto->node, &snap_list);
	}
out:
	FUNC5(&snap_lock);

	return proto;
}