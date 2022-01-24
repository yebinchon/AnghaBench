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
struct snd_pcm_substream {int dummy; } ;
struct oxygen {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_SPDIF_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_SPDIF_OUT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 struct oxygen* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct oxygen *chip = FUNC2(substream);

	FUNC3(&chip->reg_lock);
	FUNC0(chip, OXYGEN_SPDIF_CONTROL,
			    OXYGEN_SPDIF_OUT_ENABLE);
	FUNC4(&chip->reg_lock);
	return FUNC1(substream);
}