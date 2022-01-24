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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; TYPE_1__ id; } ;
struct snd_ac97 {TYPE_2__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_3D_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AC97_YMF7X3_3D_MODE_SEL ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ *,struct snd_ac97*) ; 
 int /*<<< orphan*/ * snd_ac97_controls_3d ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_ac97_ymf7x3_controls_speaker ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_ac97 *ac97)
{
	struct snd_kcontrol *kctl;
	int err;

	kctl = FUNC1(&snd_ac97_controls_3d[0], ac97);
	err = FUNC3(ac97->bus->card, kctl);
	if (err < 0)
		return err;
	FUNC4(kctl->id.name, "3D Control - Wide");
	kctl->private_value = FUNC0(AC97_3D_CONTROL, 9, 7, 0);
	FUNC2(ac97, AC97_3D_CONTROL, 0x0000);
	err = FUNC3(ac97->bus->card,
			  FUNC1(&snd_ac97_ymf7x3_controls_speaker,
					ac97));
	if (err < 0)
		return err;
	FUNC2(ac97, AC97_YMF7X3_3D_MODE_SEL, 0x0c00);
	return 0;
}