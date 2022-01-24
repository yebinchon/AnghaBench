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
struct snd_device {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct snd_device*) ; 
 struct snd_device* FUNC1 (struct snd_card*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct snd_card *card, void *device_data)
{
	struct snd_device *dev;

	if (FUNC3(!card || !device_data))
		return -ENXIO;
	dev = FUNC1(card, device_data);
	if (dev)
		return FUNC0(dev);
	FUNC2();
	return -ENXIO;
}