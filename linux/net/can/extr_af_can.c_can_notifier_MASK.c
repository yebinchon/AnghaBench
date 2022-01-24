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
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int /*<<< orphan*/  ml_priv; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
#define  NETDEV_REGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct net_device* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long msg,
			void *ptr)
{
	struct net_device *dev = FUNC1(ptr);

	if (dev->type != ARPHRD_CAN)
		return NOTIFY_DONE;

	switch (msg) {
	case NETDEV_REGISTER:
		FUNC0(!dev->ml_priv,
		     "No CAN mid layer private allocated, please fix your driver and use alloc_candev()!\n");
		break;
	}

	return NOTIFY_DONE;
}