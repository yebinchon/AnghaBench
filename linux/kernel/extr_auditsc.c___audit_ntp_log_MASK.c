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
struct audit_ntp_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_NTP_ADJUST ; 
 int /*<<< orphan*/  AUDIT_NTP_FREQ ; 
 int /*<<< orphan*/  AUDIT_NTP_OFFSET ; 
 int /*<<< orphan*/  AUDIT_NTP_STATUS ; 
 int /*<<< orphan*/  AUDIT_NTP_TAI ; 
 int /*<<< orphan*/  AUDIT_NTP_TICK ; 
 int /*<<< orphan*/  FUNC0 (struct audit_ntp_data const*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(const struct audit_ntp_data *ad)
{
	FUNC0(ad, "offset",	AUDIT_NTP_OFFSET);
	FUNC0(ad, "freq",	AUDIT_NTP_FREQ);
	FUNC0(ad, "status",	AUDIT_NTP_STATUS);
	FUNC0(ad, "tai",	AUDIT_NTP_TAI);
	FUNC0(ad, "tick",	AUDIT_NTP_TICK);
	FUNC0(ad, "adjust",	AUDIT_NTP_ADJUST);
}