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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct echoaudio {int /*<<< orphan*/  num_digital_modes; } ;

/* Variables and functions */
 int FUNC0 (struct snd_ctl_elem_info*,int,int /*<<< orphan*/ ,char const* const*) ; 
 struct echoaudio* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_info *uinfo)
{
	static const char * const names[4] = {
		"S/PDIF Coaxial", "S/PDIF Optical", "ADAT Optical",
		"S/PDIF Cdrom"
	};
	struct echoaudio *chip;

	chip = FUNC1(kcontrol);
	return FUNC0(uinfo, 1, chip->num_digital_modes, names);
}