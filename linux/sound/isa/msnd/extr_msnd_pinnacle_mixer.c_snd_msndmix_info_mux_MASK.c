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
struct snd_msnd {int /*<<< orphan*/  flags; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_HAVEDIGITAL ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,unsigned int,char const* const*) ; 
 struct snd_msnd* FUNC1 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_info *uinfo)
{
	static const char * const texts[3] = {
		"Analog", "MASS", "SPDIF",
	};
	struct snd_msnd *chip = FUNC1(kcontrol);
	unsigned items = FUNC2(F_HAVEDIGITAL, &chip->flags) ? 3 : 2;

	return FUNC0(uinfo, 1, items, texts);
}