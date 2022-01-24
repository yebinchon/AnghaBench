#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_multicast_group {int dummy; } ;
struct genl_family {int /*<<< orphan*/  netnsok; } ;
struct TYPE_3__ {int /*<<< orphan*/  genl_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  CTRL_CMD_DELFAMILY 131 
#define  CTRL_CMD_DELMCAST_GRP 130 
#define  CTRL_CMD_NEWFAMILY 129 
#define  CTRL_CMD_NEWMCAST_GRP 128 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_multicast_group const*) ; 
 struct sk_buff* FUNC4 (struct genl_family const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC5 (struct genl_family const*,struct genl_multicast_group const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  genl_ctrl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ init_net ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(int event, const struct genl_family *family,
			   const struct genl_multicast_group *grp,
			   int grp_id)
{
	struct sk_buff *msg;

	/* genl is still initialising */
	if (!init_net.genl_sock)
		return 0;

	switch (event) {
	case CTRL_CMD_NEWFAMILY:
	case CTRL_CMD_DELFAMILY:
		FUNC3(grp);
		msg = FUNC4(family, 0, 0, event);
		break;
	case CTRL_CMD_NEWMCAST_GRP:
	case CTRL_CMD_DELMCAST_GRP:
		FUNC0(!grp);
		msg = FUNC5(family, grp, grp_id, 0, 0, event);
		break;
	default:
		return -EINVAL;
	}

	if (FUNC1(msg))
		return FUNC2(msg);

	if (!family->netnsok) {
		FUNC7(&genl_ctrl, &init_net, msg, 0,
					0, GFP_KERNEL);
	} else {
		FUNC8();
		FUNC6(&genl_ctrl, msg, 0,
					0, GFP_ATOMIC);
		FUNC9();
	}

	return 0;
}