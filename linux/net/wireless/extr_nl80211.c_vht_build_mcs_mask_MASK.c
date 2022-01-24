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
typedef  size_t u8 ;
typedef  int u16 ;

/* Variables and functions */
 size_t NL80211_VHT_NSS_MAX ; 
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u16 vht_mcs_map,
			       u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
{
	u8 nss;

	for (nss = 0; nss < NL80211_VHT_NSS_MAX; nss++) {
		vht_mcs_mask[nss] = FUNC0(vht_mcs_map & 0x03);
		vht_mcs_map >>= 2;
	}
}