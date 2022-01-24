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
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_sub_if_data {int /*<<< orphan*/ ** rc_rateidx_vht_mcs_mask; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t NL80211_BAND_5GHZ ; 
 int NL80211_VHT_NSS_MAX ; 
 scalar_t__ FUNC0 (char*,int,char*,...) ; 

__attribute__((used)) static ssize_t FUNC1(
				const struct ieee80211_sub_if_data *sdata,
				char *buf, int buflen)
{
	int i, len = 0;
	const u16 *mask = sdata->rc_rateidx_vht_mcs_mask[NL80211_BAND_5GHZ];

	for (i = 0; i < NL80211_VHT_NSS_MAX; i++)
		len += FUNC0(buf + len, buflen - len, "%04x ", mask[i]);
	len += FUNC0(buf + len, buflen - len, "\n");

	return len;
}