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
struct wimax_dev {int /*<<< orphan*/  rfkill; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct wimax_dev*) ; 

void FUNC5(struct wimax_dev *wimax_dev)
{
	struct device *dev = FUNC4(wimax_dev);
	FUNC1(3, dev, "(wimax_dev %p)\n", wimax_dev);
	FUNC3(wimax_dev->rfkill);
	FUNC2(wimax_dev->rfkill);
	FUNC0(3, dev, "(wimax_dev %p)\n", wimax_dev);
}