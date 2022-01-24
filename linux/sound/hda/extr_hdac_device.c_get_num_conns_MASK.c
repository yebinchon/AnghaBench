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
struct hdac_device {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_CONNLIST_LEN ; 
 unsigned int AC_WCAP_CONN_LIST ; 
 scalar_t__ AC_WID_VOL_KNB ; 
 unsigned int FUNC0 (struct hdac_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct hdac_device *codec, hda_nid_t nid)
{
	unsigned int wcaps = FUNC0(codec, nid);
	unsigned int parm;

	if (!(wcaps & AC_WCAP_CONN_LIST) &&
	    FUNC1(wcaps) != AC_WID_VOL_KNB)
		return 0;

	parm = FUNC2(codec, nid, AC_PAR_CONNLIST_LEN);
	if (parm == -1)
		parm = 0;
	return parm;
}