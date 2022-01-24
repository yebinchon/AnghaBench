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
struct vport {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct ovs_header* userhdr; struct nlattr** attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_GET ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct vport* FUNC6 (int /*<<< orphan*/ ,struct ovs_header*,struct nlattr**) ; 
 struct sk_buff* FUNC7 () ; 
 int FUNC8 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct sk_buff *reply;
	struct vport *vport;
	int err;

	reply = FUNC7();
	if (!reply)
		return -ENOMEM;

	FUNC9();
	vport = FUNC6(FUNC11(skb->sk), ovs_header, a);
	err = FUNC2(vport);
	if (FUNC1(vport))
		goto exit_unlock_free;
	err = FUNC8(vport, reply, FUNC3(info),
				      info->snd_portid, info->snd_seq, 0,
				      OVS_VPORT_CMD_GET, GFP_ATOMIC);
	FUNC0(err < 0);
	FUNC10();

	return FUNC4(reply, info);

exit_unlock_free:
	FUNC10();
	FUNC5(reply);
	return err;
}