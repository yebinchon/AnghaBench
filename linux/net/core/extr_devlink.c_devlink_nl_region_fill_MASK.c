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
struct devlink_region {int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_PAD ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_NAME ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_SIZE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 int FUNC0 (struct sk_buff*,struct devlink*) ; 
 int FUNC1 (struct sk_buff*,struct devlink*,struct devlink_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *msg, struct devlink *devlink,
				  enum devlink_command cmd, u32 portid,
				  u32 seq, int flags,
				  struct devlink_region *region)
{
	void *hdr;
	int err;

	hdr = FUNC4(msg, portid, seq, &devlink_nl_family, flags, cmd);
	if (!hdr)
		return -EMSGSIZE;

	err = FUNC0(msg, devlink);
	if (err)
		goto nla_put_failure;

	err = FUNC5(msg, DEVLINK_ATTR_REGION_NAME, region->name);
	if (err)
		goto nla_put_failure;

	err = FUNC6(msg, DEVLINK_ATTR_REGION_SIZE,
				region->size,
				DEVLINK_ATTR_PAD);
	if (err)
		goto nla_put_failure;

	err = FUNC1(msg, devlink, region);
	if (err)
		goto nla_put_failure;

	FUNC3(msg, hdr);
	return 0;

nla_put_failure:
	FUNC2(msg, hdr);
	return err;
}