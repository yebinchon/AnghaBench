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
struct snd_seq_driver {scalar_t__ argsize; int /*<<< orphan*/  id; } ;
struct snd_seq_device {scalar_t__ argsize; int /*<<< orphan*/  id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_seq_device* FUNC1 (struct device*) ; 
 struct snd_seq_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct snd_seq_device *sdev = FUNC1(dev);
	struct snd_seq_driver *sdrv = FUNC2(drv);

	return FUNC0(sdrv->id, sdev->id) == 0 &&
		sdrv->argsize == sdev->argsize;
}