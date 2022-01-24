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
 unsigned int AC_AMPCAP_STEP_SIZE ; 
 unsigned int AC_AMPCAP_STEP_SIZE_SHIFT ; 
 int /*<<< orphan*/  NID_PATH_BOOST_CTL ; 
 int /*<<< orphan*/  NID_PATH_VOL_CTL ; 
 scalar_t__ FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(struct hda_codec *codec, hda_nid_t nid,
			    int dir, int idx)
{
	unsigned int step;

	if (!FUNC1(codec, nid, dir) ||
	    FUNC0(codec, nid, dir, idx, NID_PATH_VOL_CTL) ||
	    FUNC0(codec, nid, dir, idx, NID_PATH_BOOST_CTL))
		return false;

	step = (FUNC2(codec, nid, dir) & AC_AMPCAP_STEP_SIZE)
		>> AC_AMPCAP_STEP_SIZE_SHIFT;
	if (step < 0x20)
		return false;
	return true;
}