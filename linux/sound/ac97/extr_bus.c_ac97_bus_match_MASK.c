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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ac97_id {int /*<<< orphan*/  mask; int /*<<< orphan*/  id; } ;
struct ac97_codec_driver {struct ac97_id* id_table; } ;
struct ac97_codec_device {int vendor_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ac97_codec_device* FUNC1 (struct device*) ; 
 struct ac97_codec_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct ac97_codec_device *adev = FUNC1(dev);
	struct ac97_codec_driver *adrv = FUNC2(drv);
	const struct ac97_id *id = adrv->id_table;
	int i = 0;

	if (adev->vendor_id == 0x0 || adev->vendor_id == 0xffffffff)
		return false;

	do {
		if (FUNC0(id[i].id, adev->vendor_id, id[i].mask))
			return true;
	} while (id[i++].id);

	return false;
}