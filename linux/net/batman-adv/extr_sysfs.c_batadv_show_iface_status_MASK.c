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
struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_hard_iface {int if_status; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  BATADV_IF_ACTIVE 132 
#define  BATADV_IF_INACTIVE 131 
#define  BATADV_IF_NOT_IN_USE 130 
#define  BATADV_IF_TO_BE_ACTIVATED 129 
#define  BATADV_IF_TO_BE_REMOVED 128 
 struct batadv_hard_iface* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 struct net_device* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
					struct attribute *attr, char *buff)
{
	struct net_device *net_dev = FUNC2(kobj);
	struct batadv_hard_iface *hard_iface;
	ssize_t length;

	FUNC3(attr);

	hard_iface = FUNC0(net_dev);
	if (!hard_iface)
		return 0;

	switch (hard_iface->if_status) {
	case BATADV_IF_TO_BE_REMOVED:
		length = FUNC4(buff, "disabling\n");
		break;
	case BATADV_IF_INACTIVE:
		length = FUNC4(buff, "inactive\n");
		break;
	case BATADV_IF_ACTIVE:
		length = FUNC4(buff, "active\n");
		break;
	case BATADV_IF_TO_BE_ACTIVATED:
		length = FUNC4(buff, "enabling\n");
		break;
	case BATADV_IF_NOT_IN_USE:
	default:
		length = FUNC4(buff, "not in use\n");
		break;
	}

	FUNC1(hard_iface);

	return length;
}