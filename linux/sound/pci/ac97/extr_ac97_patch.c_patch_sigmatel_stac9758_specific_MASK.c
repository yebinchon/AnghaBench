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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,char*,char*) ; 
 int /*<<< orphan*/  snd_ac97_sigmatel_stac9758_controls ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 *ac97)
{
	int err;

	err = FUNC2(ac97);
	if (err < 0)
		return err;
	err = FUNC1(ac97, snd_ac97_sigmatel_stac9758_controls,
				   FUNC0(snd_ac97_sigmatel_stac9758_controls));
	if (err < 0)
		return err;
	/* DAC-A direct */
	FUNC3(ac97, "Headphone Playback", "Front Playback");
	/* DAC-A to Mix = PCM */
	/* DAC-B direct = Surround */
	/* DAC-B to Mix */
	FUNC3(ac97, "Video Playback", "Surround Mix Playback");
	/* DAC-C direct = Center/LFE */

	return 0;
}