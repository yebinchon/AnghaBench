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
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct dn_ifaddr {int ifa_flags; int /*<<< orphan*/  ifa_next; } ;
struct TYPE_2__ {scalar_t__ t2; scalar_t__ t3; int /*<<< orphan*/  (* timer3 ) (struct net_device*,struct dn_ifaddr*) ;} ;
struct dn_dev {scalar_t__ t3; TYPE_1__ parms; int /*<<< orphan*/  ifa_list; struct net_device* dev; } ;

/* Variables and functions */
 int IFA_F_SECONDARY ; 
 struct dn_dev* dn_db ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct dn_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct dn_ifaddr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct dn_dev *dn_db = FUNC1(dn_db, t, timer);
	struct net_device *dev;
	struct dn_ifaddr *ifa;

	FUNC3();
	dev = dn_db->dev;
	if (dn_db->t3 <= dn_db->parms.t2) {
		if (dn_db->parms.timer3) {
			for (ifa = FUNC2(dn_db->ifa_list);
			     ifa;
			     ifa = FUNC2(ifa->ifa_next)) {
				if (!(ifa->ifa_flags & IFA_F_SECONDARY))
					dn_db->parms.timer3(dev, ifa);
			}
		}
		dn_db->t3 = dn_db->parms.t3;
	} else {
		dn_db->t3 -= dn_db->parms.t2;
	}
	FUNC4();
	FUNC0(dev);
}