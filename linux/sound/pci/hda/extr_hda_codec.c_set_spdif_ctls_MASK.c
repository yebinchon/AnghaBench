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
 int AC_DIG1_ENABLE ; 
 int AC_WCAP_OUT_AMP ; 
 int /*<<< orphan*/  HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct hda_codec *codec, hda_nid_t nid,
				  int dig1, int dig2)
{
	FUNC1(codec, nid, dig1, dig2);
	/* unmute amp switch (if any) */
	if ((FUNC0(codec, nid) & AC_WCAP_OUT_AMP) &&
	    (dig1 & AC_DIG1_ENABLE))
		FUNC2(codec, nid, HDA_OUTPUT, 0,
					    HDA_AMP_MUTE, 0);
}