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
struct mdev_state {TYPE_1__* type; } ;
struct mdev_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int mbytes; } ;

/* Variables and functions */
 struct mdev_device* FUNC0 (struct device*) ; 
 struct mdev_state* FUNC1 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
	    char *buf)
{
	struct mdev_device *mdev = FUNC0(dev);
	struct mdev_state *mdev_state = FUNC1(mdev);

	return FUNC2(buf, "%d MB\n", mdev_state->type->mbytes);
}