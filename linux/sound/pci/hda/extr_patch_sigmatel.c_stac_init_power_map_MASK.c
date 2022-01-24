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
struct sigmatel_spec {int num_pwrs; scalar_t__* pwr_nids; scalar_t__ vref_mute_led_nid; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned int AC_JACK_PORT_COMPLEX ; 
 unsigned int AC_JACK_PORT_NONE ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  jack_update_power ; 
 unsigned int FUNC2 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct sigmatel_spec *spec = codec->spec;
	int i;

	for (i = 0; i < spec->num_pwrs; i++)  {
		hda_nid_t nid = spec->pwr_nids[i];
		unsigned int def_conf = FUNC2(codec, nid);
		def_conf = FUNC0(def_conf);
		if (def_conf == AC_JACK_PORT_COMPLEX &&
		    spec->vref_mute_led_nid != nid &&
		    FUNC1(codec, nid)) {
			FUNC3(codec, nid,
							    jack_update_power);
		} else {
			if (def_conf == AC_JACK_PORT_NONE)
				FUNC4(codec, nid, false, false);
			else
				FUNC4(codec, nid, true, false);
		}
	}
}