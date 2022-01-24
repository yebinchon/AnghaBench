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
struct rfcomm_dev {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 struct rfcomm_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfcomm_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rfcomm_dev *FUNC4(int id)
{
	struct rfcomm_dev *dev;

	FUNC1(&rfcomm_dev_lock);

	dev = FUNC0(id);

	if (dev && !FUNC3(&dev->port))
		dev = NULL;

	FUNC2(&rfcomm_dev_lock);

	return dev;
}