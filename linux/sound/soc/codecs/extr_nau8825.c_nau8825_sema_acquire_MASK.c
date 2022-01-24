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
struct nau8825 {int /*<<< orphan*/  dev; int /*<<< orphan*/  xtalk_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nau8825 *nau8825, long timeout)
{
	int ret;

	if (timeout) {
		ret = FUNC1(&nau8825->xtalk_sem, timeout);
		if (ret < 0)
			FUNC0(nau8825->dev, "Acquire semaphore timeout\n");
	} else {
		ret = FUNC2(&nau8825->xtalk_sem);
		if (ret)
			FUNC0(nau8825->dev, "Acquire semaphore fail\n");
	}

	return ret;
}