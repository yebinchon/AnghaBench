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
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AUX ; 
 int /*<<< orphan*/  AC97_CD ; 
 int /*<<< orphan*/  AC97_CODEC_CLASS_REV ; 
 int /*<<< orphan*/  AC97_PCI_SVID ; 
 int /*<<< orphan*/  AC97_PC_BEEP ; 
 int /*<<< orphan*/  AC97_VIDEO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wm9711_snd_ac97_controls ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 * ac97)
{
	int err, i;
	
	for (i = 0; i < FUNC0(wm9711_snd_ac97_controls); i++) {
		if ((err = FUNC3(ac97->bus->card, FUNC1(&wm9711_snd_ac97_controls[i], ac97))) < 0)
			return err;
	}
	FUNC2(ac97,  AC97_CODEC_CLASS_REV, 0x0808);
	FUNC2(ac97,  AC97_PCI_SVID, 0x0808);
	FUNC2(ac97,  AC97_VIDEO, 0x0808);
	FUNC2(ac97,  AC97_AUX, 0x0808);
	FUNC2(ac97,  AC97_PC_BEEP, 0x0808);
	FUNC2(ac97,  AC97_CD, 0x0000);
	return 0;
}