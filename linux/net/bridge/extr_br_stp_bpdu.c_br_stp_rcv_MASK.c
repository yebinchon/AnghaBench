#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stp_proto {int dummy; } ;
struct sk_buff {unsigned char* data; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {scalar_t__ state; int flags; scalar_t__ port_no; struct net_bridge* br; TYPE_2__* dev; } ;
struct net_bridge {scalar_t__ stp_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  group_addr; TYPE_1__* dev; } ;
struct TYPE_9__ {unsigned char* prio; unsigned char* addr; } ;
struct TYPE_8__ {unsigned char* prio; unsigned char* addr; } ;
struct br_config_bpdu {int topology_change; int topology_change_ack; unsigned char root_path_cost; unsigned char port_id; scalar_t__ message_age; scalar_t__ max_age; void* forward_delay; void* hello_time; TYPE_4__ bridge_id; TYPE_3__ root; } ;
struct TYPE_10__ {int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 unsigned char const BPDU_TYPE_CONFIG ; 
 unsigned char const BPDU_TYPE_TCN ; 
 int BR_BPDU_GUARD ; 
 scalar_t__ BR_KERNEL_STP ; 
 scalar_t__ BR_STATE_DISABLED ; 
 int IFF_UP ; 
 void* FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 struct net_bridge_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_port*,struct br_config_bpdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_port*) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 unsigned char* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(const struct stp_proto *proto, struct sk_buff *skb,
		struct net_device *dev)
{
	struct net_bridge_port *p;
	struct net_bridge *br;
	const unsigned char *buf;

	if (!FUNC10(skb, 4))
		goto err;

	/* compare of protocol id and version */
	buf = skb->data;
	if (buf[0] != 0 || buf[1] != 0 || buf[2] != 0)
		goto err;

	p = FUNC2(dev);
	if (!p)
		goto err;

	br = p->br;
	FUNC12(&br->lock);

	if (br->stp_enabled != BR_KERNEL_STP)
		goto out;

	if (!(br->dev->flags & IFF_UP))
		goto out;

	if (p->state == BR_STATE_DISABLED)
		goto out;

	if (!FUNC7(FUNC6(skb)->h_dest, br->group_addr))
		goto out;

	if (p->flags & BR_BPDU_GUARD) {
		FUNC1(br, "BPDU received on blocked port %u(%s)\n",
			  (unsigned int) p->port_no, p->dev->name);
		FUNC5(p);
		goto out;
	}

	buf = FUNC11(skb, 3);

	if (buf[0] == BPDU_TYPE_CONFIG) {
		struct br_config_bpdu bpdu;

		if (!FUNC10(skb, 32))
			goto out;

		buf = skb->data;
		bpdu.topology_change = (buf[1] & 0x01) ? 1 : 0;
		bpdu.topology_change_ack = (buf[1] & 0x80) ? 1 : 0;

		bpdu.root.prio[0] = buf[2];
		bpdu.root.prio[1] = buf[3];
		bpdu.root.addr[0] = buf[4];
		bpdu.root.addr[1] = buf[5];
		bpdu.root.addr[2] = buf[6];
		bpdu.root.addr[3] = buf[7];
		bpdu.root.addr[4] = buf[8];
		bpdu.root.addr[5] = buf[9];
		bpdu.root_path_cost =
			(buf[10] << 24) |
			(buf[11] << 16) |
			(buf[12] << 8) |
			buf[13];
		bpdu.bridge_id.prio[0] = buf[14];
		bpdu.bridge_id.prio[1] = buf[15];
		bpdu.bridge_id.addr[0] = buf[16];
		bpdu.bridge_id.addr[1] = buf[17];
		bpdu.bridge_id.addr[2] = buf[18];
		bpdu.bridge_id.addr[3] = buf[19];
		bpdu.bridge_id.addr[4] = buf[20];
		bpdu.bridge_id.addr[5] = buf[21];
		bpdu.port_id = (buf[22] << 8) | buf[23];

		bpdu.message_age = FUNC0(buf+24);
		bpdu.max_age = FUNC0(buf+26);
		bpdu.hello_time = FUNC0(buf+28);
		bpdu.forward_delay = FUNC0(buf+30);

		if (bpdu.message_age > bpdu.max_age) {
			if (FUNC9())
				FUNC1(p->br,
					  "port %u config from %pM"
					  " (message_age %ul > max_age %ul)\n",
					  p->port_no,
					  FUNC6(skb)->h_source,
					  bpdu.message_age, bpdu.max_age);
			goto out;
		}

		FUNC3(p, &bpdu);
	} else if (buf[0] == BPDU_TYPE_TCN) {
		FUNC4(p);
	}
 out:
	FUNC13(&br->lock);
 err:
	FUNC8(skb);
}