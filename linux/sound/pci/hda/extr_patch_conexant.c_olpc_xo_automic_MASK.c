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
struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ dc_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct hda_jack_callback*) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec,
			    struct hda_jack_callback *jack)
{
	struct conexant_spec *spec = codec->spec;

	/* in DC mode, we don't handle automic */
	if (!spec->dc_enable)
		FUNC2(codec, jack);
	FUNC1(codec);
	if (spec->dc_enable)
		FUNC0(codec);
}