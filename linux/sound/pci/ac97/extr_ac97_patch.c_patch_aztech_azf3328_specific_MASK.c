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
struct snd_kcontrol {void* private_value; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_3D_CONTROL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC1 (struct snd_ac97*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 *ac97)
{
	struct snd_kcontrol *kctl_3d_center =
		FUNC1(ac97, "3D Control - Center");
	struct snd_kcontrol *kctl_3d_depth =
		FUNC1(ac97, "3D Control - Depth");

	/*
	 * 3D register is different from AC97 standard layout
	 * (also do some renaming, to resemble Windows driver naming)
	 */
	if (kctl_3d_center) {
		kctl_3d_center->private_value =
			FUNC0(AC97_3D_CONTROL, 1, 0x07, 0);
		FUNC2(ac97,
			"3D Control - Center", "3D Control - Width"
		);
	}
	if (kctl_3d_depth)
		kctl_3d_depth->private_value =
			FUNC0(AC97_3D_CONTROL, 8, 0x03, 0);

	/* Aztech Windows driver calls the
	   equivalent control "Modem Playback", thus rename it: */
	FUNC2(ac97,
		"Master Mono Playback", "Modem Playback"
	);
	FUNC2(ac97,
		"Headphone Playback", "FM Synth Playback"
	);

	return 0;
}