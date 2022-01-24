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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_info_req {struct sk_buff* msg; } ;
struct devlink {TYPE_1__* ops; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {int (* info_get ) (struct devlink*,struct devlink_info_req*,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct devlink*,struct devlink_info_req*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *msg, struct devlink *devlink,
		     enum devlink_command cmd, u32 portid,
		     u32 seq, int flags, struct netlink_ext_ack *extack)
{
	struct devlink_info_req req;
	void *hdr;
	int err;

	hdr = FUNC3(msg, portid, seq, &devlink_nl_family, flags, cmd);
	if (!hdr)
		return -EMSGSIZE;

	err = -EMSGSIZE;
	if (FUNC0(msg, devlink))
		goto err_cancel_msg;

	req.msg = msg;
	err = devlink->ops->info_get(devlink, &req, extack);
	if (err)
		goto err_cancel_msg;

	FUNC2(msg, hdr);
	return 0;

err_cancel_msg:
	FUNC1(msg, hdr);
	return err;
}