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
struct au1xpsc_audio_dmadata {scalar_t__ curr_period; scalar_t__ periods; int /*<<< orphan*/  substream; scalar_t__ pos; scalar_t__ period_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_dmadata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int irq, void *dev_id)
{
	struct au1xpsc_audio_dmadata *cd = dev_id;

	cd->pos += cd->period_bytes;
	if (++cd->curr_period >= cd->periods) {
		cd->pos = 0;
		cd->curr_period = 0;
	}
	FUNC1(cd->substream);
	FUNC0(cd);
}