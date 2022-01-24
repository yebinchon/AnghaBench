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
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int /*<<< orphan*/  AMP_OUT_MUTE ; 
 int FUNC0 (struct alc_spec*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	int hp_pin = FUNC0(spec);

	/* Prevent pop noises when headphones are plugged in */
	FUNC2(codec, hp_pin, 0,
			    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_MUTE);
	FUNC1(20);
}