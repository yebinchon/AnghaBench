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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int AC_AMPCAP_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static bool FUNC4(struct snd_kcontrol *kcontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	return FUNC2(codec, FUNC1(kcontrol),
			      FUNC0(kcontrol)) & AC_AMPCAP_MUTE;
}