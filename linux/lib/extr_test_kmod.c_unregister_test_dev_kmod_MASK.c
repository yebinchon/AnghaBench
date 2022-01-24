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
struct kmod_test_device {int /*<<< orphan*/  trigger_mutex; int /*<<< orphan*/  config_mutex; int /*<<< orphan*/  misc_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kmod_test_device*) ; 

__attribute__((used)) static
void FUNC6(struct kmod_test_device *test_dev)
{
	FUNC3(&test_dev->trigger_mutex);
	FUNC3(&test_dev->config_mutex);

	FUNC5(test_dev);

	FUNC0(test_dev->dev, "removing interface\n");
	FUNC2(&test_dev->misc_dev);

	FUNC4(&test_dev->config_mutex);
	FUNC4(&test_dev->trigger_mutex);

	FUNC1(test_dev);
}