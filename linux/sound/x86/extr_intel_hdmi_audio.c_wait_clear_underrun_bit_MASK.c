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
typedef  int u32 ;
struct snd_intelhad {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_HDMI_STATUS ; 
 int AUD_HDMI_STATUS_MASK_UNDERRUN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_intelhad*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_intelhad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct snd_intelhad *intelhaddata)
{
	int i;
	u32 val;

	for (i = 0; i < 100; i++) {
		/* clear bit30, 31 AUD_HDMI_STATUS */
		FUNC2(intelhaddata, AUD_HDMI_STATUS, &val);
		if (!(val & AUD_HDMI_STATUS_MASK_UNDERRUN))
			return;
		FUNC4(100);
		FUNC0();
		FUNC3(intelhaddata, AUD_HDMI_STATUS, val);
	}
	FUNC1(intelhaddata->dev, "Unable to clear UNDERRUN bits\n");
}