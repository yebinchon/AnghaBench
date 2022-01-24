#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_PROBE_REQ ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ieee80211_local* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,size_t) ; 
 struct ieee80211_hdr_3addr* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

struct sk_buff *FUNC8(struct ieee80211_hw *hw,
				       const u8 *src_addr,
				       const u8 *ssid, size_t ssid_len,
				       size_t tailroom)
{
	struct ieee80211_local *local = FUNC3(hw);
	struct ieee80211_hdr_3addr *hdr;
	struct sk_buff *skb;
	size_t ie_ssid_len;
	u8 *pos;

	ie_ssid_len = 2 + ssid_len;

	skb = FUNC1(local->hw.extra_tx_headroom + sizeof(*hdr) +
			    ie_ssid_len + tailroom);
	if (!skb)
		return NULL;

	FUNC7(skb, local->hw.extra_tx_headroom);

	hdr = FUNC6(skb, sizeof(*hdr));
	hdr->frame_control = FUNC0(IEEE80211_FTYPE_MGMT |
					 IEEE80211_STYPE_PROBE_REQ);
	FUNC2(hdr->addr1);
	FUNC4(hdr->addr2, src_addr, ETH_ALEN);
	FUNC2(hdr->addr3);

	pos = FUNC5(skb, ie_ssid_len);
	*pos++ = WLAN_EID_SSID;
	*pos++ = ssid_len;
	if (ssid_len)
		FUNC4(pos, ssid, ssid_len);
	pos += ssid_len;

	return skb;
}