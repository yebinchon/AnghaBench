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
struct snd_kcontrol_new {int dummy; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 struct snd_kcontrol_new FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int HDA_INPUT ; 
 int HDA_OUTPUT ; 
 int /*<<< orphan*/  IN_EFFECT_END_NID ; 
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 scalar_t__ FUNC1 (struct ca0132_spec*) ; 
 char** dirstr ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new*,struct hda_codec*) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, hda_nid_t nid,
			 const char *pfx, int dir)
{
	struct ca0132_spec *spec = codec->spec;
	char namestr[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
	int type = dir ? HDA_INPUT : HDA_OUTPUT;
	struct snd_kcontrol_new knew =
		FUNC0(namestr, nid, 1, type);
	/* If using alt_controls, add FX: prefix. But, don't add FX:
	 * prefix to OutFX or InFX enable controls.
	 */
	if (FUNC1(spec) && (nid <= IN_EFFECT_END_NID))
		FUNC4(namestr, "FX: %s %s Switch", pfx, dirstr[dir]);
	else
		FUNC4(namestr, "%s %s Switch", pfx, dirstr[dir]);

	return FUNC3(codec, nid, FUNC2(&knew, codec));
}