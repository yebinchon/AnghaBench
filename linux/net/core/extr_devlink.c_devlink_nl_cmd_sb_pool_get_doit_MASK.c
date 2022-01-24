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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct devlink_sb** user_ptr; } ;
struct devlink_sb {TYPE_1__* ops; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_pool_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_SB_POOL_NEW ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,struct devlink_sb*,struct devlink_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_sb*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
					   struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_sb *devlink_sb = info->user_ptr[1];
	struct sk_buff *msg;
	u16 pool_index;
	int err;

	err = FUNC1(devlink_sb, info,
						  &pool_index);
	if (err)
		return err;

	if (!devlink->ops->sb_pool_get)
		return -EOPNOTSUPP;

	msg = FUNC4(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC0(msg, devlink, devlink_sb, pool_index,
				      DEVLINK_CMD_SB_POOL_NEW,
				      info->snd_portid, info->snd_seq, 0);
	if (err) {
		FUNC3(msg);
		return err;
	}

	return FUNC2(msg, info);
}