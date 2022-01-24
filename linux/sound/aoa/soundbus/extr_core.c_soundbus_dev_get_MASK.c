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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct soundbus_dev {TYPE_1__ ofdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *) ; 
 struct soundbus_dev* FUNC1 (struct device*) ; 

struct soundbus_dev *FUNC2(struct soundbus_dev *dev)
{
	struct device *tmp;

	if (!dev)
		return NULL;
	tmp = FUNC0(&dev->ofdev.dev);
	if (tmp)
		return FUNC1(tmp);
	else
		return NULL;
}