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
struct vport {TYPE_1__* ops; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  userhdr; struct nlattr** attrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 size_t OVS_VPORT_ATTR_OPTIONS ; 
 size_t OVS_VPORT_ATTR_TYPE ; 
 size_t OVS_VPORT_ATTR_UPCALL_PID ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_SET ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  dp_vport_genl_family ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct vport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct sk_buff* FUNC10 () ; 
 int FUNC11 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vport*,struct nlattr*) ; 
 int FUNC13 (struct vport*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct sk_buff *reply;
	struct vport *vport;
	int err;

	reply = FUNC10();
	if (!reply)
		return -ENOMEM;

	FUNC7();
	vport = FUNC5(FUNC14(skb->sk), info->userhdr, a);
	err = FUNC2(vport);
	if (FUNC1(vport))
		goto exit_unlock_free;

	if (a[OVS_VPORT_ATTR_TYPE] &&
	    FUNC6(a[OVS_VPORT_ATTR_TYPE]) != vport->ops->type) {
		err = -EINVAL;
		goto exit_unlock_free;
	}

	if (a[OVS_VPORT_ATTR_OPTIONS]) {
		err = FUNC12(vport, a[OVS_VPORT_ATTR_OPTIONS]);
		if (err)
			goto exit_unlock_free;
	}


	if (a[OVS_VPORT_ATTR_UPCALL_PID]) {
		struct nlattr *ids = a[OVS_VPORT_ATTR_UPCALL_PID];

		err = FUNC13(vport, ids);
		if (err)
			goto exit_unlock_free;
	}

	err = FUNC11(vport, reply, FUNC3(info),
				      info->snd_portid, info->snd_seq, 0,
				      OVS_VPORT_CMD_SET, GFP_KERNEL);
	FUNC0(err < 0);

	FUNC9();
	FUNC8(&dp_vport_genl_family, reply, info);
	return 0;

exit_unlock_free:
	FUNC9();
	FUNC4(reply);
	return err;
}