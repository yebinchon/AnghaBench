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
struct test_config {int dummy; } ;
struct kmod_test_device {int /*<<< orphan*/  config_mutex; struct test_config config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kmod_test_device *test_dev)
{
	struct test_config *config;

	if (!test_dev)
		return;

	config = &test_dev->config;

	FUNC1(&test_dev->config_mutex);
	FUNC0(config);
	FUNC2(&test_dev->config_mutex);
}