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
struct net_device {int /*<<< orphan*/  dn_ptr; } ;
struct dn_ifaddr {int dummy; } ;
struct dn_dev {int /*<<< orphan*/  ifa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dn_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dn_ifaddr*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev)
{
	struct dn_dev *dn_db = FUNC3(dev->dn_ptr);
	struct dn_ifaddr *ifa;

	if (dn_db == NULL)
		return;

	while ((ifa = FUNC3(dn_db->ifa_list)) != NULL) {
		FUNC0(dn_db, &dn_db->ifa_list, 0);
		FUNC2(ifa);
	}

	FUNC1(dev);
}