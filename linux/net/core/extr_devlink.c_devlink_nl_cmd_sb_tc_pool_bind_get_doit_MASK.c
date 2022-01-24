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
struct devlink_sb {struct devlink* devlink; } ;
struct devlink_port {struct devlink* devlink; } ;
struct devlink {TYPE_1__* ops; } ;
typedef  enum devlink_sb_pool_type { ____Placeholder_devlink_sb_pool_type } devlink_sb_pool_type ;
struct TYPE_2__ {int /*<<< orphan*/  sb_tc_pool_bind_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_SB_TC_POOL_BIND_NEW ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,struct devlink*,struct devlink_sb*,struct devlink_sb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct genl_info*,int*) ; 
 int FUNC2 (struct devlink_sb*,struct genl_info*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
						   struct genl_info *info)
{
	struct devlink_port *devlink_port = info->user_ptr[0];
	struct devlink *devlink = devlink_port->devlink;
	struct devlink_sb *devlink_sb = info->user_ptr[1];
	struct sk_buff *msg;
	enum devlink_sb_pool_type pool_type;
	u16 tc_index;
	int err;

	err = FUNC1(info, &pool_type);
	if (err)
		return err;

	err = FUNC2(devlink_sb, info,
						pool_type, &tc_index);
	if (err)
		return err;

	if (!devlink->ops->sb_tc_pool_bind_get)
		return -EOPNOTSUPP;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC0(msg, devlink, devlink_port,
					      devlink_sb, tc_index, pool_type,
					      DEVLINK_CMD_SB_TC_POOL_BIND_NEW,
					      info->snd_portid,
					      info->snd_seq, 0);
	if (err) {
		FUNC4(msg);
		return err;
	}

	return FUNC3(msg, info);
}