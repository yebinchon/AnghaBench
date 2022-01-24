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
struct hdac_device {int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; int /*<<< orphan*/  widget_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hdac_device*) ; 

void FUNC6(struct hdac_device *codec)
{
	if (FUNC1(&codec->dev)) {
		FUNC3(&codec->widget_lock);
		FUNC2(codec);
		FUNC4(&codec->widget_lock);
		FUNC0(&codec->dev);
		FUNC5(codec->bus, codec);
	}
}