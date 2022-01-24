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

/* Variables and functions */
#define  MEM_CANCEL_OFFLINE 133 
#define  MEM_CANCEL_ONLINE 132 
#define  MEM_GOING_OFFLINE 131 
#define  MEM_GOING_ONLINE 130 
#define  MEM_OFFLINE 129 
#define  MEM_ONLINE 128 
 int NOTIFY_OK ; 
 int FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *self,
				unsigned long action, void *arg)
{
	int ret = 0;

	switch (action) {
	case MEM_GOING_ONLINE:
		ret = FUNC2(arg);
		break;
	case MEM_GOING_OFFLINE:
		ret = FUNC1(arg);
		break;
	case MEM_OFFLINE:
	case MEM_CANCEL_ONLINE:
		FUNC3(arg);
		break;
	case MEM_ONLINE:
	case MEM_CANCEL_OFFLINE:
		break;
	}
	if (ret)
		ret = FUNC0(ret);
	else
		ret = NOTIFY_OK;
	return ret;
}