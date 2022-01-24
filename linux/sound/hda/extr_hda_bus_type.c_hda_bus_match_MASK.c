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
struct hdac_driver {scalar_t__ type; int (* match ) (struct hdac_device*,struct hdac_driver*) ;} ;
struct hdac_device {scalar_t__ type; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hdac_device* FUNC0 (struct device*) ; 
 struct hdac_driver* FUNC1 (struct device_driver*) ; 
 int FUNC2 (struct hdac_device*,struct hdac_driver*) ; 
 int FUNC3 (struct hdac_device*,struct hdac_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct hdac_device *hdev = FUNC0(dev);
	struct hdac_driver *hdrv = FUNC1(drv);

	if (hdev->type != hdrv->type)
		return 0;

	/*
	 * if driver provided a match function use that otherwise we will
	 * use hdac_codec_match function
	 */
	if (hdrv->match)
		return hdrv->match(hdev, hdrv);
	else
		return FUNC2(hdev, hdrv);
	return 1;
}