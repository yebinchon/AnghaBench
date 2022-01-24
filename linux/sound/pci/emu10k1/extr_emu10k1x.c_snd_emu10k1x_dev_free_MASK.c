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
struct snd_device {struct emu10k1x* device_data; } ;
struct emu10k1x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct emu10k1x*) ; 

__attribute__((used)) static int FUNC1(struct snd_device *device)
{
	struct emu10k1x *chip = device->device_data;
	return FUNC0(chip);
}