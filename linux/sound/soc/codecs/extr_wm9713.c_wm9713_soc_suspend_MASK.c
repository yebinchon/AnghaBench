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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_EXTENDED_MSTATUS ; 
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	/* Disable everything except touchpanel - that will be handled
	 * by the touch driver and left disabled if touch is not in
	 * use. */
	FUNC0(component, AC97_EXTENDED_MID, 0x7fff,
				 0x7fff);
	FUNC1(component, AC97_EXTENDED_MSTATUS, 0xffff);
	FUNC1(component, AC97_POWERDOWN, 0x6f00);
	FUNC1(component, AC97_POWERDOWN, 0xffff);

	return 0;
}