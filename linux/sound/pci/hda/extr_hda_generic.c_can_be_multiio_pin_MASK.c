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
 scalar_t__ AC_JACK_PORT_COMPLEX ; 
 unsigned int AC_PINCAP_OUT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct hda_codec *codec,
			       unsigned int location, hda_nid_t nid)
{
	unsigned int defcfg, caps;

	defcfg = FUNC2(codec, nid);
	if (FUNC0(defcfg) != AC_JACK_PORT_COMPLEX)
		return false;
	if (location && FUNC1(defcfg) != location)
		return false;
	caps = FUNC3(codec, nid);
	if (!(caps & AC_PINCAP_OUT))
		return false;
	return true;
}