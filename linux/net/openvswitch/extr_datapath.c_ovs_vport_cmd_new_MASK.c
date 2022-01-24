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
typedef  int u32 ;
struct vport_parms {int port_no; struct nlattr* upcall_portids; struct datapath* dp; struct nlattr* options; void* type; int /*<<< orphan*/  name; } ;
struct vport {int /*<<< orphan*/  dev; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct datapath {unsigned int max_headroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DP_MAX_PORTS ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 size_t OVS_VPORT_ATTR_IFINDEX ; 
 size_t OVS_VPORT_ATTR_NAME ; 
 size_t OVS_VPORT_ATTR_OPTIONS ; 
 size_t OVS_VPORT_ATTR_PORT_NO ; 
 size_t OVS_VPORT_ATTR_TYPE ; 
 size_t OVS_VPORT_ATTR_UPCALL_PID ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_NEW ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  dp_vport_genl_family ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 struct datapath* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 struct vport* FUNC8 (struct vport_parms*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 void* FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct datapath*,unsigned int) ; 
 struct sk_buff* FUNC15 () ; 
 int FUNC16 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vport* FUNC17 (struct datapath*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct vport_parms parms;
	struct sk_buff *reply;
	struct vport *vport;
	struct datapath *dp;
	unsigned int new_headroom;
	u32 port_no;
	int err;

	if (!a[OVS_VPORT_ATTR_NAME] || !a[OVS_VPORT_ATTR_TYPE] ||
	    !a[OVS_VPORT_ATTR_UPCALL_PID])
		return -EINVAL;
	if (a[OVS_VPORT_ATTR_IFINDEX])
		return -EOPNOTSUPP;

	port_no = a[OVS_VPORT_ATTR_PORT_NO]
		? FUNC10(a[OVS_VPORT_ATTR_PORT_NO]) : 0;
	if (port_no >= DP_MAX_PORTS)
		return -EFBIG;

	reply = FUNC15();
	if (!reply)
		return -ENOMEM;

	FUNC11();
restart:
	dp = FUNC4(FUNC18(skb->sk), ovs_header->dp_ifindex);
	err = -ENODEV;
	if (!dp)
		goto exit_unlock_free;

	if (port_no) {
		vport = FUNC17(dp, port_no);
		err = -EBUSY;
		if (vport)
			goto exit_unlock_free;
	} else {
		for (port_no = 1; ; port_no++) {
			if (port_no >= DP_MAX_PORTS) {
				err = -EFBIG;
				goto exit_unlock_free;
			}
			vport = FUNC17(dp, port_no);
			if (!vport)
				break;
		}
	}

	parms.name = FUNC9(a[OVS_VPORT_ATTR_NAME]);
	parms.type = FUNC10(a[OVS_VPORT_ATTR_TYPE]);
	parms.options = a[OVS_VPORT_ATTR_OPTIONS];
	parms.dp = dp;
	parms.port_no = port_no;
	parms.upcall_portids = a[OVS_VPORT_ATTR_UPCALL_PID];

	vport = FUNC8(&parms);
	err = FUNC2(vport);
	if (FUNC1(vport)) {
		if (err == -EAGAIN)
			goto restart;
		goto exit_unlock_free;
	}

	err = FUNC16(vport, reply, FUNC3(info),
				      info->snd_portid, info->snd_seq, 0,
				      OVS_VPORT_CMD_NEW, GFP_KERNEL);

	new_headroom = FUNC6(vport->dev);

	if (new_headroom > dp->max_headroom)
		FUNC14(dp, new_headroom);
	else
		FUNC7(vport->dev, dp->max_headroom);

	FUNC0(err < 0);
	FUNC13();

	FUNC12(&dp_vport_genl_family, reply, info);
	return 0;

exit_unlock_free:
	FUNC13();
	FUNC5(reply);
	return err;
}