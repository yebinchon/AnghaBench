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
typedef  int /*<<< orphan*/  const u8 ;
struct sk_buff {int len; int /*<<< orphan*/  const* data; } ;
struct ieee80211_local {int /*<<< orphan*/  wep_tx_ctx; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_WEP_ICV_LEN ; 
 int IEEE80211_WEP_IV_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_KEY_LEN_WEP104 ; 
 int /*<<< orphan*/  const* FUNC1 (struct ieee80211_local*,struct sk_buff*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

int FUNC6(struct ieee80211_local *local,
			  struct sk_buff *skb,
			  const u8 *key, int keylen, int keyidx)
{
	u8 *iv;
	size_t len;
	u8 rc4key[3 + WLAN_KEY_LEN_WEP104];

	if (FUNC0(FUNC5(skb) < IEEE80211_WEP_ICV_LEN))
		return -1;

	iv = FUNC1(local, skb, keylen, keyidx);
	if (!iv)
		return -1;

	len = skb->len - (iv + IEEE80211_WEP_IV_LEN - skb->data);

	/* Prepend 24-bit IV to RC4 key */
	FUNC3(rc4key, iv, 3);

	/* Copy rest of the WEP key (the secret part) */
	FUNC3(rc4key + 3, key, keylen);

	/* Add room for ICV */
	FUNC4(skb, IEEE80211_WEP_ICV_LEN);

	return FUNC2(&local->wep_tx_ctx, rc4key, keylen + 3,
					  iv + IEEE80211_WEP_IV_LEN, len);
}