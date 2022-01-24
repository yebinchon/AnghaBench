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
typedef  int u8 ;
struct phonet_device {int /*<<< orphan*/  addrs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PN_NO_ADDR ; 
 struct phonet_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

u8 FUNC10(struct net_device *dev, u8 daddr)
{
	struct phonet_device *pnd;
	u8 saddr;

	FUNC7();
	pnd = FUNC1(dev);
	if (pnd) {
		FUNC0(FUNC2(pnd->addrs, 64));

		/* Use same source address as destination, if possible */
		if (FUNC9(daddr >> 2, pnd->addrs))
			saddr = daddr;
		else
			saddr = FUNC5(pnd->addrs, 64) << 2;
	} else
		saddr = PN_NO_ADDR;
	FUNC8();

	if (saddr == PN_NO_ADDR) {
		/* Fallback to another device */
		struct net_device *def_dev;

		def_dev = FUNC6(FUNC3(dev));
		if (def_dev) {
			if (def_dev != dev)
				saddr = FUNC10(def_dev, daddr);
			FUNC4(def_dev);
		}
	}
	return saddr;
}