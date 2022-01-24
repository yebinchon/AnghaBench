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
struct hda_codec {int /*<<< orphan*/  init_pins; int /*<<< orphan*/  user_pins; int /*<<< orphan*/  driver_pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec)
{
	FUNC0(&codec->driver_pins);
#ifdef CONFIG_SND_HDA_RECONFIG
	snd_array_free(&codec->user_pins);
#endif
	FUNC0(&codec->init_pins);
}