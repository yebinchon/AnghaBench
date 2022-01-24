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
struct TYPE_2__ {int /*<<< orphan*/ * c; } ;
struct snd_kcontrol_new {int /*<<< orphan*/  private_value; int /*<<< orphan*/  put; int /*<<< orphan*/  get; int /*<<< orphan*/  info; TYPE_1__ tlv; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 struct snd_kcontrol_new FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int HDA_INPUT ; 
 int HDA_OUTPUT ; 
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
#define  XBASS_XOVER 128 
 int /*<<< orphan*/  ca0132_alt_effect_slider_info ; 
 int /*<<< orphan*/  ca0132_alt_effect_slider_put ; 
 int /*<<< orphan*/  ca0132_alt_slider_ctl_get ; 
 int /*<<< orphan*/  ca0132_alt_xbass_xover_slider_ctl_get ; 
 int /*<<< orphan*/  ca0132_alt_xbass_xover_slider_info ; 
 int /*<<< orphan*/  ca0132_alt_xbass_xover_slider_put ; 
 char** dirstr ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new*,struct hda_codec*) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, hda_nid_t nid,
					const char *pfx, int dir)
{
	char namestr[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
	int type = dir ? HDA_INPUT : HDA_OUTPUT;
	struct snd_kcontrol_new knew =
		FUNC0(namestr, nid, 1, 0, type);

	FUNC4(namestr, "FX: %s %s Volume", pfx, dirstr[dir]);

	knew.tlv.c = NULL;

	switch (nid) {
	case XBASS_XOVER:
		knew.info = ca0132_alt_xbass_xover_slider_info;
		knew.get = ca0132_alt_xbass_xover_slider_ctl_get;
		knew.put = ca0132_alt_xbass_xover_slider_put;
		break;
	default:
		knew.info = ca0132_alt_effect_slider_info;
		knew.get = ca0132_alt_slider_ctl_get;
		knew.put = ca0132_alt_effect_slider_put;
		knew.private_value =
			FUNC1(nid, 1, 0, type);
		break;
	}

	return FUNC3(codec, nid, FUNC2(&knew, codec));
}