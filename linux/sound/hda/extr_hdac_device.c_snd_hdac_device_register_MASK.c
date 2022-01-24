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
struct hdac_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  widget_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hdac_device *codec)
{
	int err;

	err = FUNC0(&codec->dev);
	if (err < 0)
		return err;
	FUNC3(&codec->widget_lock);
	err = FUNC2(codec);
	FUNC4(&codec->widget_lock);
	if (err < 0) {
		FUNC1(&codec->dev);
		return err;
	}

	return 0;
}