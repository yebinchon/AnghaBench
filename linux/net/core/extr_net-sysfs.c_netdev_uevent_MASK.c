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
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *d, struct kobj_uevent_env *env)
{
	struct net_device *dev = FUNC1(d);
	int retval;

	/* pass interface to uevent. */
	retval = FUNC0(env, "INTERFACE=%s", dev->name);
	if (retval)
		goto exit;

	/* pass ifindex to uevent.
	 * ifindex is useful as it won't change (interface name may change)
	 * and is what RtNetlink uses natively.
	 */
	retval = FUNC0(env, "IFINDEX=%d", dev->ifindex);

exit:
	return retval;
}