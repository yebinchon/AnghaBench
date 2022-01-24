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
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {scalar_t__ eapd_nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *private_data, int enabled)
{
	struct hda_codec *codec = private_data;
	struct ad198x_spec *spec = codec->spec;

	if (spec->eapd_nid)
		FUNC0(private_data, enabled);
	FUNC1(codec, 0x01, 0,
				   AC_VERB_SET_GPIO_DATA,
				   enabled ? 0x00 : 0x02);
}