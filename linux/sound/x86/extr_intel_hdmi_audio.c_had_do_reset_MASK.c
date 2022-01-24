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
struct snd_intelhad {int need_reset; int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_intelhad*) ; 

__attribute__((used)) static void FUNC2(struct snd_intelhad *intelhaddata)
{
	if (!intelhaddata->need_reset || !intelhaddata->connected)
		return;

	/* Reset buffer pointers */
	FUNC0(intelhaddata);
	FUNC1(intelhaddata);
	intelhaddata->need_reset = false;
}