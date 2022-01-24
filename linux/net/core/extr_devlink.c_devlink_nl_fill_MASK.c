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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct devlink {int /*<<< orphan*/  reload_failed; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_RELOAD_FAILED ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg, struct devlink *devlink,
			   enum devlink_command cmd, u32 portid,
			   u32 seq, int flags)
{
	void *hdr;

	hdr = FUNC3(msg, portid, seq, &devlink_nl_family, flags, cmd);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC0(msg, devlink))
		goto nla_put_failure;
	if (FUNC4(msg, DEVLINK_ATTR_RELOAD_FAILED, devlink->reload_failed))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}