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
 unsigned int AC_WCAP_STEREO ; 
 scalar_t__ AC_WID_AUD_MIX ; 
 int HDA_INPUT ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct hda_codec *codec, hda_nid_t nid, int dir)
{
	unsigned int wcaps = FUNC0(codec, nid);
	hda_nid_t conn;

	if (wcaps & AC_WCAP_STEREO)
		return true;
	if (dir != HDA_INPUT || FUNC1(wcaps) != AC_WID_AUD_MIX)
		return false;
	if (FUNC3(codec, nid) != 1)
		return false;
	if (FUNC2(codec, nid, &conn, 1) < 0)
		return false;
	return !!(FUNC0(codec, conn) & AC_WCAP_STEREO);
}