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
 unsigned int AC_PINCTL_VREFEN ; 
 unsigned int PIN_HP ; 
 unsigned int PIN_IN ; 
 unsigned int PIN_OUT ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec, hda_nid_t nid)
{
	int out_jacks = FUNC2(codec, nid);
	int in_jacks = FUNC1(codec, nid);
	unsigned int val = FUNC4(codec, nid);
	int idx = 0;

	if (val & PIN_OUT) {
		if (out_jacks > 1 && val == PIN_HP)
			idx = 1;
	} else if (val & PIN_IN) {
		idx = out_jacks;
		if (in_jacks > 1) {
			unsigned int vref_caps = FUNC3(codec, nid);
			val &= AC_PINCTL_VREFEN;
			idx += FUNC0(vref_caps, val);
		}
	}
	return idx;
}