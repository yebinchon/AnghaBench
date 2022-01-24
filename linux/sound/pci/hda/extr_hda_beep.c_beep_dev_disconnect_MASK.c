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
struct snd_device {struct hda_beep* device_data; } ;
struct hda_beep {int /*<<< orphan*/  dev; scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_beep*) ; 

__attribute__((used)) static int FUNC3(struct snd_device *device)
{
	struct hda_beep *beep = device->device_data;

	if (beep->registered)
		FUNC1(beep->dev);
	else
		FUNC0(beep->dev);
	FUNC2(beep);
	return 0;
}