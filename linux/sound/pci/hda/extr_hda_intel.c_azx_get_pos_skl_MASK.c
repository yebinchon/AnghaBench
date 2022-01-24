#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* substream; } ;
struct azx_dev {TYPE_2__ core; } ;
struct azx {int dummy; } ;
struct TYPE_3__ {scalar_t__ stream; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int FUNC0 (struct azx*,struct azx_dev*) ; 
 unsigned int FUNC1 (struct azx*,struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned int FUNC3(struct azx *chip, struct azx_dev *azx_dev)
{
	/* DPIB register gives a more accurate position for playback */
	if (azx_dev->core.substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		return FUNC1(chip, azx_dev);

	/* For capture, we need to read posbuf, but it requires a delay
	 * for the possible boundary overlap; the read of DPIB fetches the
	 * actual posbuf
	 */
	FUNC2(20);
	FUNC1(chip, azx_dev);
	return FUNC0(chip, azx_dev);
}