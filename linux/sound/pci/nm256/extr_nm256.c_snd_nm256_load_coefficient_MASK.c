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
typedef  scalar_t__ u32 ;
struct nm256 {int coeffs_current; scalar_t__ all_coeff_buf; int /*<<< orphan*/  use_cache; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NM_COEFF_START_OFFSET ; 
 scalar_t__ NM_PLAYBACK_ENABLE_REG ; 
 scalar_t__ NM_PLAYBACK_REG_OFFSET ; 
 scalar_t__ NM_RECORD_ENABLE_REG ; 
 scalar_t__ NM_RECORD_REG_OFFSET ; 
 int NM_TOTAL_COEFF_COUNT ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__* coefficient_sizes ; 
 int /*<<< orphan*/  coefficients ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*,int,scalar_t__,int) ; 
 int FUNC3 (struct nm256*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nm256*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nm256*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct nm256 *chip, int stream, int number)
{
	/* The enable register for the specified engine.  */
	u32 poffset = (stream == SNDRV_PCM_STREAM_CAPTURE ?
		       NM_RECORD_ENABLE_REG : NM_PLAYBACK_ENABLE_REG);
	u32 addr = NM_COEFF_START_OFFSET;

	addr += (stream == SNDRV_PCM_STREAM_CAPTURE ?
		 NM_RECORD_REG_OFFSET : NM_PLAYBACK_REG_OFFSET);

	if (FUNC3(chip, poffset) & 1) {
		FUNC0(chip->card->dev,
			"NM256: Engine was enabled while loading coefficients!\n");
		return;
	}

	/* The recording engine uses coefficient values 8-15.  */
	number &= 7;
	if (stream == SNDRV_PCM_STREAM_CAPTURE)
		number += 8;

	if (! chip->use_cache) {
		FUNC2(chip, stream, addr, number);
		return;
	}
	if (! chip->coeffs_current) {
		FUNC4(chip, coefficients, chip->all_coeff_buf,
				       NM_TOTAL_COEFF_COUNT * 4);
		chip->coeffs_current = 1;
	} else {
		u32 base = chip->all_coeff_buf;
		u32 offset = FUNC1(number);
		u32 end_offset = offset + coefficient_sizes[number];
		FUNC5(chip, addr, base + offset);
		if (stream == SNDRV_PCM_STREAM_PLAYBACK)
			end_offset--;
		FUNC5(chip, addr + 4, base + end_offset);
	}
}