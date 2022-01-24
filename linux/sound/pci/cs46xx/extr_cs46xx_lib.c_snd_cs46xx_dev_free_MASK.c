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
struct snd_device {struct snd_cs46xx* device_data; } ;
struct snd_cs46xx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_cs46xx*) ; 

__attribute__((used)) static int FUNC1(struct snd_device *device)
{
	struct snd_cs46xx *chip = device->device_data;
	return FUNC0(chip);
}