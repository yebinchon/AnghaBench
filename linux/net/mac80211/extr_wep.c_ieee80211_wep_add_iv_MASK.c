#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FCTL_PROTECTED ; 
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_WEP_IV_LEN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static u8 *FUNC8(struct ieee80211_local *local,
				struct sk_buff *skb,
				int keylen, int keyidx)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	unsigned int hdrlen;
	u8 *newhdr;

	hdr->frame_control |= FUNC2(IEEE80211_FCTL_PROTECTED);

	if (FUNC1(FUNC6(skb) < IEEE80211_WEP_IV_LEN))
		return NULL;

	hdrlen = FUNC3(hdr->frame_control);
	newhdr = FUNC7(skb, IEEE80211_WEP_IV_LEN);
	FUNC5(newhdr, newhdr + IEEE80211_WEP_IV_LEN, hdrlen);

	/* the HW only needs room for the IV, but not the actual IV */
	if (info->control.hw_key &&
	    (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
		return newhdr + hdrlen;

	FUNC4(local, keylen, keyidx, newhdr + hdrlen);
	return newhdr + hdrlen;
}