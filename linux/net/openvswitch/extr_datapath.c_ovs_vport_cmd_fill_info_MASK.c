#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vport {TYPE_2__* dev; TYPE_1__* ops; int /*<<< orphan*/  port_no; int /*<<< orphan*/  dp; } ;
struct sk_buff {int dummy; } ;
struct ovs_vport_stats {int dummy; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_IFINDEX ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_NAME ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_NETNSID ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_PAD ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_PORT_NO ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_STATS ; 
 int /*<<< orphan*/  OVS_VPORT_ATTR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  dp_vport_genl_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ovs_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct ovs_header*) ; 
 struct ovs_header* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ovs_vport_stats*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vport*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct vport*,struct ovs_vport_stats*) ; 
 scalar_t__ FUNC12 (struct vport*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct vport*) ; 
 int FUNC14 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct vport *vport, struct sk_buff *skb,
				   struct net *net, u32 portid, u32 seq,
				   u32 flags, u8 cmd, gfp_t gfp)
{
	struct ovs_header *ovs_header;
	struct ovs_vport_stats vport_stats;
	int err;

	ovs_header = FUNC3(skb, portid, seq, &dp_vport_genl_family,
				 flags, cmd);
	if (!ovs_header)
		return -EMSGSIZE;

	ovs_header->dp_ifindex = FUNC4(vport->dp);

	if (FUNC9(skb, OVS_VPORT_ATTR_PORT_NO, vport->port_no) ||
	    FUNC9(skb, OVS_VPORT_ATTR_TYPE, vport->ops->type) ||
	    FUNC8(skb, OVS_VPORT_ATTR_NAME,
			   FUNC13(vport)) ||
	    FUNC9(skb, OVS_VPORT_ATTR_IFINDEX, vport->dev->ifindex))
		goto nla_put_failure;

	if (!FUNC5(net, FUNC0(vport->dev))) {
		int id = FUNC14(net, FUNC0(vport->dev), gfp);

		if (FUNC7(skb, OVS_VPORT_ATTR_NETNSID, id))
			goto nla_put_failure;
	}

	FUNC11(vport, &vport_stats);
	if (FUNC6(skb, OVS_VPORT_ATTR_STATS,
			  sizeof(struct ovs_vport_stats), &vport_stats,
			  OVS_VPORT_ATTR_PAD))
		goto nla_put_failure;

	if (FUNC12(vport, skb))
		goto nla_put_failure;

	err = FUNC10(vport, skb);
	if (err == -EMSGSIZE)
		goto error;

	FUNC2(skb, ovs_header);
	return 0;

nla_put_failure:
	err = -EMSGSIZE;
error:
	FUNC1(skb, ovs_header);
	return err;
}