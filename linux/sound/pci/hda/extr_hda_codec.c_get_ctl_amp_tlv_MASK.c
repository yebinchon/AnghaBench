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
typedef  int u32 ;
struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_AMPCAP_MIN_MUTE ; 
 int AC_AMPCAP_OFFSET ; 
 int AC_AMPCAP_OFFSET_SHIFT ; 
 int AC_AMPCAP_STEP_SIZE ; 
 int AC_AMPCAP_STEP_SIZE_SHIFT ; 
 size_t SNDRV_CTL_TLVO_DB_SCALE_MIN ; 
 size_t SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP ; 
 size_t SNDRV_CTL_TLVO_LEN ; 
 size_t SNDRV_CTL_TLVO_TYPE ; 
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ; 
 int TLV_DB_SCALE_MUTE ; 
 int FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol*) ; 
 unsigned int FUNC3 (struct snd_kcontrol*) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 struct hda_codec* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static void FUNC6(struct snd_kcontrol *kcontrol, unsigned int *tlv)
{
	struct hda_codec *codec = FUNC5(kcontrol);
	hda_nid_t nid = FUNC2(kcontrol);
	int dir = FUNC0(kcontrol);
	unsigned int ofs = FUNC3(kcontrol);
	bool min_mute = FUNC1(kcontrol);
	u32 caps, val1, val2;

	caps = FUNC4(codec, nid, dir);
	val2 = (caps & AC_AMPCAP_STEP_SIZE) >> AC_AMPCAP_STEP_SIZE_SHIFT;
	val2 = (val2 + 1) * 25;
	val1 = -((caps & AC_AMPCAP_OFFSET) >> AC_AMPCAP_OFFSET_SHIFT);
	val1 += ofs;
	val1 = ((int)val1) * ((int)val2);
	if (min_mute || (caps & AC_AMPCAP_MIN_MUTE))
		val2 |= TLV_DB_SCALE_MUTE;
	tlv[SNDRV_CTL_TLVO_TYPE] = SNDRV_CTL_TLVT_DB_SCALE;
	tlv[SNDRV_CTL_TLVO_LEN] = 2 * sizeof(unsigned int);
	tlv[SNDRV_CTL_TLVO_DB_SCALE_MIN] = val1;
	tlv[SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP] = val2;
}