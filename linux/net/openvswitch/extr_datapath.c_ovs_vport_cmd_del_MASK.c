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
struct vport {scalar_t__ port_no; int /*<<< orphan*/  dev; struct datapath* dp; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  userhdr; struct nlattr** attrs; } ;
struct datapath {unsigned int max_headroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 scalar_t__ OVSP_LOCAL ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_DEL ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  dp_vport_genl_family ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct vport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vport*) ; 
 unsigned int FUNC9 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct datapath*,unsigned int) ; 
 struct sk_buff* FUNC14 () ; 
 int FUNC15 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct genl_info *info)
{
	bool update_headroom = false;
	struct nlattr **a = info->attrs;
	struct sk_buff *reply;
	struct datapath *dp;
	struct vport *vport;
	unsigned int new_headroom;
	int err;

	reply = FUNC14();
	if (!reply)
		return -ENOMEM;

	FUNC10();
	vport = FUNC5(FUNC16(skb->sk), info->userhdr, a);
	err = FUNC2(vport);
	if (FUNC1(vport))
		goto exit_unlock_free;

	if (vport->port_no == OVSP_LOCAL) {
		err = -EINVAL;
		goto exit_unlock_free;
	}

	err = FUNC15(vport, reply, FUNC3(info),
				      info->snd_portid, info->snd_seq, 0,
				      OVS_VPORT_CMD_DEL, GFP_KERNEL);
	FUNC0(err < 0);

	/* the vport deletion may trigger dp headroom update */
	dp = vport->dp;
	if (FUNC6(vport->dev) == dp->max_headroom)
		update_headroom = true;

	FUNC7(vport->dev);
	FUNC8(vport);

	if (update_headroom) {
		new_headroom = FUNC9(dp);

		if (new_headroom < dp->max_headroom)
			FUNC13(dp, new_headroom);
	}
	FUNC12();

	FUNC11(&dp_vport_genl_family, reply, info);
	return 0;

exit_unlock_free:
	FUNC12();
	FUNC4(reply);
	return err;
}