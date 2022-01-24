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
struct snd_ac97 {int /*<<< orphan*/  flags; int /*<<< orphan*/ * build_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_STEREO_MUTES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  patch_ad1986_build_ops ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 * ac97)
{
	FUNC1(ac97);
	ac97->build_ops = &patch_ad1986_build_ops;
	ac97->flags |= AC97_STEREO_MUTES;

	/* update current jack configuration */
	FUNC0(ac97);

	return 0;
}