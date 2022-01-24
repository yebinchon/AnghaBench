#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pcsp_chip ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	int err;

	err = FUNC1(&pcsp_chip.input_dev, &dev->dev);
	if (err < 0)
		return err;

	err = FUNC0(&dev->dev);
	if (err < 0) {
		FUNC2(pcsp_chip.input_dev);
		return err;
	}

	FUNC3(dev, &pcsp_chip);
	return 0;
}