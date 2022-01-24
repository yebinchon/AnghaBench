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
struct efc_clock {int /*<<< orphan*/  index; int /*<<< orphan*/  sampling_rate; int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EFC_CAT_HWCTL ; 
 int /*<<< orphan*/  EFC_CMD_HWCTL_GET_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_efw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(struct snd_efw *efw, struct efc_clock *clock)
{
	int err;

	err = FUNC1(efw, EFC_CAT_HWCTL,
			      EFC_CMD_HWCTL_GET_CLOCK,
			      NULL, 0,
			      (__be32 *)clock, sizeof(struct efc_clock));
	if (err >= 0) {
		FUNC0(&clock->source);
		FUNC0(&clock->sampling_rate);
		FUNC0(&clock->index);
	}

	return err;
}