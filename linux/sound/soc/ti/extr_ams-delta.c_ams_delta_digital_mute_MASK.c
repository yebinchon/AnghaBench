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
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ams_delta_lock ; 
 int ams_delta_muted ; 
 int /*<<< orphan*/  cx81801_cmd_pending ; 
 int /*<<< orphan*/  gpiod_modem_codec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int mute)
{
	int apply;

	if (ams_delta_muted == mute)
		return 0;

	FUNC1(&ams_delta_lock);
	ams_delta_muted = mute;
	apply = !cx81801_cmd_pending;
	FUNC2(&ams_delta_lock);

	if (apply)
		FUNC0(gpiod_modem_codec, !!mute);
	return 0;
}