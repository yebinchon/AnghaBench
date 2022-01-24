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
struct snd_ac97 {int /*<<< orphan*/ * build_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SIGMATEL_ANALOG ; 
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS1 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS2 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_CIC1 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_CIC2 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_MULTICHN ; 
 int /*<<< orphan*/  patch_sigmatel_stac9700_ops ; 
 scalar_t__ FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 * ac97)
{
	ac97->build_ops = &patch_sigmatel_stac9700_ops;
	if (FUNC0(ac97, AC97_SIGMATEL_ANALOG) == 0) {
		// patch for SigmaTel
		FUNC1(ac97, AC97_SIGMATEL_CIC1, 0xabba);
		FUNC1(ac97, AC97_SIGMATEL_CIC2, 0x4000);
		FUNC1(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
		FUNC1(ac97, AC97_SIGMATEL_BIAS2, 0x0002);
	}
	FUNC1(ac97, AC97_SIGMATEL_MULTICHN, 0x0000);
	return 0;
}