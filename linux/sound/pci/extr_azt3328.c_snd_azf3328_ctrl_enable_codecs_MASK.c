#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_6A_PAUSE_PLAYBACK_BIT8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_azf3328*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct snd_azf3328 *chip, bool enable)
{
	FUNC0(chip->card->dev, "codec_enable %d\n", enable);
	/* no idea what exactly is being done here, but I strongly assume it's
	 * PM related */
	FUNC1(
		chip, IO_6A_PAUSE_PLAYBACK_BIT8, enable
	);
}