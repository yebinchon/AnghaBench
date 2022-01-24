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
struct test_config {int /*<<< orphan*/  num_threads; } ;
struct kmod_test_device_info {int dummy; } ;
struct kmod_test_device {int /*<<< orphan*/  info; struct test_config config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kmod_test_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kmod_test_device *test_dev)
{
	struct test_config *config = &test_dev->config;

	FUNC1(test_dev);
	test_dev->info =
		FUNC2(FUNC0(sizeof(struct kmod_test_device_info),
				   config->num_threads));
	if (!test_dev->info)
		return -ENOMEM;

	return 0;
}