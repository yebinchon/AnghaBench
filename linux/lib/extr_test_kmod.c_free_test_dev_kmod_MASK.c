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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
struct kmod_test_device {TYPE_1__ misc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmod_test_device*) ; 

__attribute__((used)) static void FUNC4(struct kmod_test_device *test_dev)
{
	if (test_dev) {
		FUNC1(test_dev->misc_dev.name);
		test_dev->misc_dev.name = NULL;
		FUNC0(test_dev);
		FUNC2(test_dev);
		FUNC3(test_dev);
		test_dev = NULL;
	}
}