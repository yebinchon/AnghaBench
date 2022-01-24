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
struct ca0132_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_PARAM_PORTA_160OHM_GAIN ; 
 int /*<<< orphan*/  CONTROL_PARAM_PORTD_160OHM_GAIN ; 
 int /*<<< orphan*/  CONTROL_PARAM_SPDIF1_SOURCE ; 
 int /*<<< orphan*/  CONTROL_PARAM_VIP_SOURCE ; 
 int MEM_CONNID_WUH ; 
 int /*<<< orphan*/  SR_48_000 ; 
 scalar_t__ FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	if (FUNC0(spec)) {
		FUNC1(codec, MEM_CONNID_WUH, SR_48_000);
		FUNC1(codec, 0x0B, SR_48_000);
		FUNC2(codec, CONTROL_PARAM_SPDIF1_SOURCE, 0);
		FUNC2(codec, 0, 0);
		FUNC2(codec, CONTROL_PARAM_VIP_SOURCE, 0);
	}

	FUNC2(codec, CONTROL_PARAM_PORTA_160OHM_GAIN, 6);
	FUNC2(codec, CONTROL_PARAM_PORTD_160OHM_GAIN, 6);
}