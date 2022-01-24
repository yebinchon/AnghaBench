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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_DIPXMIT_DISABLE ; 
 int /*<<< orphan*/  AC_VERB_SET_HDMI_DIP_XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
				      hda_nid_t pin_nid)
{
	FUNC0(codec, pin_nid, 0x0, 0x0);
	FUNC1(codec, pin_nid, 0, AC_VERB_SET_HDMI_DIP_XMIT,
						AC_DIPXMIT_DISABLE);
}