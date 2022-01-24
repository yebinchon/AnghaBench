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
struct hdmi_spec_per_pin {int mux_idx; int /*<<< orphan*/  pin_nid; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
			struct hdmi_spec_per_pin *per_pin)
{
	hda_nid_t pin_nid = per_pin->pin_nid;
	int mux_idx, curr;

	mux_idx = per_pin->mux_idx;
	curr = FUNC0(codec, pin_nid, 0,
					  AC_VERB_GET_CONNECT_SEL, 0);
	if (curr != mux_idx)
		FUNC1(codec, pin_nid, 0,
					    AC_VERB_SET_CONNECT_SEL,
					    mux_idx);
}