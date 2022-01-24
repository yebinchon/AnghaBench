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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv_bss_info_changed ; 
 int /*<<< orphan*/  FUNC0 (struct tep_handle*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct tep_handle *tep)
{
	FUNC0(tep, -1, "mac80211",
				     "drv_bss_info_changed",
				     drv_bss_info_changed, NULL);
}