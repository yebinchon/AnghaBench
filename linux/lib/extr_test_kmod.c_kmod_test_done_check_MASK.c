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
struct test_config {scalar_t__ num_threads; } ;
struct kmod_test_device {scalar_t__ done; int /*<<< orphan*/  kthreads_done; int /*<<< orphan*/  dev; struct test_config config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct kmod_test_device *test_dev,
				 unsigned int idx)
{
	struct test_config *config = &test_dev->config;

	test_dev->done++;
	FUNC1(test_dev->dev, "Done thread count: %u\n", test_dev->done);

	if (test_dev->done == config->num_threads) {
		FUNC2(test_dev->dev, "Done: %u threads have all run now\n",
			 test_dev->done);
		FUNC2(test_dev->dev, "Last thread to run: %u\n", idx);
		FUNC0(&test_dev->kthreads_done);
	}
}