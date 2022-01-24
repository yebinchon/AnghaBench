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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct soundbus_dev {scalar_t__* modalias; struct platform_device ofdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*,int) ; 
 int FUNC4 (char*) ; 
 struct soundbus_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct soundbus_dev *sdev = FUNC5(dev);
	struct platform_device *of = &sdev->ofdev;
	int length;

	if (*sdev->modalias) {
		FUNC3(buf, sdev->modalias, sizeof(sdev->modalias) + 1);
		FUNC2(buf, "\n");
		length = FUNC4(buf);
	} else {
		length = FUNC1(buf, "of:N%pOFn%c%s\n",
				 of->dev.of_node, 'T',
                                 FUNC0(of->dev.of_node));
	}

	return length;
}