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
struct snd_efw {int dummy; } ;
struct efc_clock {int source; int /*<<< orphan*/  member_0; } ;
typedef  enum snd_efw_clock_source { ____Placeholder_snd_efw_clock_source } snd_efw_clock_source ;

/* Variables and functions */
 int FUNC0 (struct snd_efw*,struct efc_clock*) ; 

int FUNC1(struct snd_efw *efw,
				     enum snd_efw_clock_source *source)
{
	int err;
	struct efc_clock clock = {0};

	err = FUNC0(efw, &clock);
	if (err >= 0)
		*source = clock.source;

	return err;
}