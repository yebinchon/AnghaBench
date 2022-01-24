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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int /*<<< orphan*/  unsol_tag_front_hp; int /*<<< orphan*/  unsol_tag_amic1; int /*<<< orphan*/  unsol_tag_hp; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNSOL_TAG_DSP ; 
 int /*<<< orphan*/  amic_callback ; 
 int /*<<< orphan*/  ca0132_process_dsp_response ; 
 scalar_t__ FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  hp_callback ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	FUNC1(codec, spec->unsol_tag_hp, hp_callback);
	FUNC1(codec, spec->unsol_tag_amic1,
					    amic_callback);
	FUNC1(codec, UNSOL_TAG_DSP,
					    ca0132_process_dsp_response);
	/* Front headphone jack detection */
	if (FUNC0(spec))
		FUNC1(codec,
			spec->unsol_tag_front_hp, hp_callback);
}