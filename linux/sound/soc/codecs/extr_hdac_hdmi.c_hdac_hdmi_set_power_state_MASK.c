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
 unsigned int AC_PWRST_ERROR ; 
 int /*<<< orphan*/  AC_VERB_SET_POWER_STATE ; 
 int AC_WCAP_POWER ; 
 int FUNC0 (struct hdac_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct hdac_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct hdac_device *hdev,
			     hda_nid_t nid, unsigned int pwr_state)
{
	int count;
	unsigned int state;

	if (FUNC0(hdev, nid) & AC_WCAP_POWER) {
		if (!FUNC1(hdev, nid, pwr_state)) {
			for (count = 0; count < 10; count++) {
				FUNC2(hdev, nid, 0,
						AC_VERB_SET_POWER_STATE,
						pwr_state);
				state = FUNC3(hdev,
						nid, pwr_state);
				if (!(state & AC_PWRST_ERROR))
					break;
			}
		}
	}
}