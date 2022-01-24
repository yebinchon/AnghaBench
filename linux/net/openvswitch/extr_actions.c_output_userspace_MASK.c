#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  upcall ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vport {int /*<<< orphan*/  dev; } ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_upcall_info {int actions_len; struct nlattr const* actions; int /*<<< orphan*/  egress_tun_info; int /*<<< orphan*/  portid; struct nlattr const* userdata; int /*<<< orphan*/  mru; int /*<<< orphan*/  cmd; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mru; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_PACKET_CMD_ACTION ; 
#define  OVS_USERSPACE_ATTR_ACTIONS 131 
#define  OVS_USERSPACE_ATTR_EGRESS_TUN_PORT 130 
#define  OVS_USERSPACE_ATTR_PID 129 
#define  OVS_USERSPACE_ATTR_USERDATA 128 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct dp_upcall_info*,int /*<<< orphan*/ ,int) ; 
 struct nlattr* FUNC3 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const*) ; 
 int FUNC5 (struct nlattr const*) ; 
 struct nlattr* FUNC6 (struct nlattr const*,int*) ; 
 int FUNC7 (struct nlattr const*) ; 
 int FUNC8 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct dp_upcall_info*,int /*<<< orphan*/ ) ; 
 struct vport* FUNC9 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct datapath *dp, struct sk_buff *skb,
			    struct sw_flow_key *key, const struct nlattr *attr,
			    const struct nlattr *actions, int actions_len,
			    uint32_t cutlen)
{
	struct dp_upcall_info upcall;
	const struct nlattr *a;
	int rem;

	FUNC2(&upcall, 0, sizeof(upcall));
	upcall.cmd = OVS_PACKET_CMD_ACTION;
	upcall.mru = FUNC0(skb)->mru;

	for (a = FUNC3(attr), rem = FUNC5(attr); rem > 0;
		 a = FUNC6(a, &rem)) {
		switch (FUNC7(a)) {
		case OVS_USERSPACE_ATTR_USERDATA:
			upcall.userdata = a;
			break;

		case OVS_USERSPACE_ATTR_PID:
			upcall.portid = FUNC4(a);
			break;

		case OVS_USERSPACE_ATTR_EGRESS_TUN_PORT: {
			/* Get out tunnel info. */
			struct vport *vport;

			vport = FUNC9(dp, FUNC4(a));
			if (vport) {
				int err;

				err = FUNC1(vport->dev, skb);
				if (!err)
					upcall.egress_tun_info = FUNC10(skb);
			}

			break;
		}

		case OVS_USERSPACE_ATTR_ACTIONS: {
			/* Include actions. */
			upcall.actions = actions;
			upcall.actions_len = actions_len;
			break;
		}

		} /* End of switch. */
	}

	return FUNC8(dp, skb, key, &upcall, cutlen);
}