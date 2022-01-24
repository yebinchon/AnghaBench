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
struct net_device {unsigned int flags; scalar_t__ promiscuity; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AUDIT_ANOM_PROMISCUOUS ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ audit_enabled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, int inc, bool notify)
{
	unsigned int old_flags = dev->flags;
	kuid_t uid;
	kgid_t gid;

	FUNC0();

	dev->flags |= IFF_PROMISC;
	dev->promiscuity += inc;
	if (dev->promiscuity == 0) {
		/*
		 * Avoid overflow.
		 * If inc causes overflow, untouch promisc and return error.
		 */
		if (inc < 0)
			dev->flags &= ~IFF_PROMISC;
		else {
			dev->promiscuity -= inc;
			FUNC11("%s: promiscuity touches roof, set promiscuity failed. promiscuity feature of device might be broken.\n",
				dev->name);
			return -EOVERFLOW;
		}
	}
	if (dev->flags != old_flags) {
		FUNC10("device %s %s promiscuous mode\n",
			dev->name,
			dev->flags & IFF_PROMISC ? "entered" : "left");
		if (audit_enabled) {
			FUNC6(&uid, &gid);
			FUNC5(FUNC2(), GFP_ATOMIC,
				  AUDIT_ANOM_PROMISCUOUS,
				  "dev=%s prom=%d old_prom=%d auid=%u uid=%u gid=%u ses=%u",
				  dev->name, (dev->flags & IFF_PROMISC),
				  (old_flags & IFF_PROMISC),
				  FUNC9(&init_user_ns, FUNC3(current)),
				  FUNC9(&init_user_ns, uid),
				  FUNC8(&init_user_ns, gid),
				  FUNC4(current));
		}

		FUNC7(dev, IFF_PROMISC);
	}
	if (notify)
		FUNC1(dev, old_flags, IFF_PROMISC);
	return 0;
}