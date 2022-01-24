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
struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_PINCTL_HP_EN ; 
 unsigned int AC_PINCTL_IN_EN ; 
 unsigned int AC_PINCTL_OUT_EN ; 
 unsigned int AC_PINCTL_VREFEN ; 
#define  AC_PINCTL_VREF_100 132 
#define  AC_PINCTL_VREF_50 131 
#define  AC_PINCTL_VREF_80 130 
#define  AC_PINCTL_VREF_GRD 129 
#define  AC_PINCTL_VREF_HIZ 128 
 int /*<<< orphan*/  AC_VERB_GET_PIN_WIDGET_CONTROL ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer,
			   struct hda_codec *codec, hda_nid_t nid,
			   int supports_vref)
{
	unsigned int pinctls;

	pinctls = FUNC0(codec, nid, 0,
				     AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
	FUNC1(buffer, "  Pin-ctls: 0x%02x:", pinctls);
	if (pinctls & AC_PINCTL_IN_EN)
		FUNC1(buffer, " IN");
	if (pinctls & AC_PINCTL_OUT_EN)
		FUNC1(buffer, " OUT");
	if (pinctls & AC_PINCTL_HP_EN)
		FUNC1(buffer, " HP");
	if (supports_vref) {
		int vref = pinctls & AC_PINCTL_VREFEN;
		switch (vref) {
		case AC_PINCTL_VREF_HIZ:
			FUNC1(buffer, " VREF_HIZ");
			break;
		case AC_PINCTL_VREF_50:
			FUNC1(buffer, " VREF_50");
			break;
		case AC_PINCTL_VREF_GRD:
			FUNC1(buffer, " VREF_GRD");
			break;
		case AC_PINCTL_VREF_80:
			FUNC1(buffer, " VREF_80");
			break;
		case AC_PINCTL_VREF_100:
			FUNC1(buffer, " VREF_100");
			break;
		}
	}
	FUNC1(buffer, "\n");
}