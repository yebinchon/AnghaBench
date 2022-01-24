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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_sta_vht_cap {int /*<<< orphan*/  vht_mcs; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_VHT_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u8 *FUNC3(u8 *pos, struct ieee80211_sta_vht_cap *vht_cap,
			       u32 cap)
{
	__le32 tmp;

	*pos++ = WLAN_EID_VHT_CAPABILITY;
	*pos++ = sizeof(struct ieee80211_vht_cap);
	FUNC2(pos, 0, sizeof(struct ieee80211_vht_cap));

	/* capability flags */
	tmp = FUNC0(cap);
	FUNC1(pos, &tmp, sizeof(u32));
	pos += sizeof(u32);

	/* VHT MCS set */
	FUNC1(pos, &vht_cap->vht_mcs, sizeof(vht_cap->vht_mcs));
	pos += sizeof(vht_cap->vht_mcs);

	return pos;
}