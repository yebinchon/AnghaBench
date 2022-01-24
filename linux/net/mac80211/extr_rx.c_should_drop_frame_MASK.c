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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int RX_FLAG_FAILED_FCS_CRC ; 
 int RX_FLAG_FAILED_PLCP_CRC ; 
 int RX_FLAG_NO_PSDU ; 
 int RX_FLAG_ONLY_MONITOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline bool FUNC5(struct sk_buff *skb, int present_fcs_len,
				     unsigned int rtap_space)
{
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr;

	hdr = (void *)(skb->data + rtap_space);

	if (status->flag & (RX_FLAG_FAILED_FCS_CRC |
			    RX_FLAG_FAILED_PLCP_CRC |
			    RX_FLAG_ONLY_MONITOR |
			    RX_FLAG_NO_PSDU))
		return true;

	if (FUNC4(skb->len < 16 + present_fcs_len + rtap_space))
		return true;

	if (FUNC2(hdr->frame_control) &&
	    !FUNC3(hdr->frame_control) &&
	    !FUNC1(hdr->frame_control))
		return true;

	return false;
}