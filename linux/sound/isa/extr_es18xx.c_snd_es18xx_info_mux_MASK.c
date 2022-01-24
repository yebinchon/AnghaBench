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
struct snd_es18xx {int version; } ;
struct snd_ctl_elem_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct snd_ctl_elem_info*,int,int,char const* const*) ; 
 struct snd_es18xx* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	static const char * const texts5Source[5] = {
		"Mic", "CD", "Line", "Master", "Mix"
	};
	static const char * const texts8Source[8] = {
		"Mic", "Mic Master", "CD", "AOUT",
		"Mic1", "Mix", "Line", "Master"
	};
	struct snd_es18xx *chip = FUNC1(kcontrol);

	switch (chip->version) {
	case 0x1868:
	case 0x1878:
		return FUNC0(uinfo, 1, 4, texts5Source);
	case 0x1887:
	case 0x1888:
		return FUNC0(uinfo, 1, 5, texts5Source);
	case 0x1869: /* DS somewhat contradictory for 1869: could be be 5 or 8 */
	case 0x1879:
		return FUNC0(uinfo, 1, 8, texts8Source);
	default:
		return -EINVAL;
	}
}