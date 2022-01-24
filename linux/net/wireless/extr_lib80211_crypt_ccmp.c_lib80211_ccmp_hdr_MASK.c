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
struct sk_buff {int len; } ;
struct lib80211_ccmp_data {int key_idx; int /*<<< orphan*/ * tx_pn; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ CCMP_HDR_LEN ; 
 int CCMP_PN_LEN ; 
 int CCMP_TK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, int hdr_len,
			      u8 *aeskey, int keylen, void *priv)
{
	struct lib80211_ccmp_data *key = priv;
	int i;
	u8 *pos;

	if (FUNC2(skb) < CCMP_HDR_LEN || skb->len < hdr_len)
		return -1;

	if (aeskey != NULL && keylen >= CCMP_TK_LEN)
		FUNC0(aeskey, key->key, CCMP_TK_LEN);

	pos = FUNC3(skb, CCMP_HDR_LEN);
	FUNC1(pos, pos + CCMP_HDR_LEN, hdr_len);
	pos += hdr_len;

	i = CCMP_PN_LEN - 1;
	while (i >= 0) {
		key->tx_pn[i]++;
		if (key->tx_pn[i] != 0)
			break;
		i--;
	}

	*pos++ = key->tx_pn[5];
	*pos++ = key->tx_pn[4];
	*pos++ = 0;
	*pos++ = (key->key_idx << 6) | (1 << 5) /* Ext IV included */ ;
	*pos++ = key->tx_pn[3];
	*pos++ = key->tx_pn[2];
	*pos++ = key->tx_pn[1];
	*pos++ = key->tx_pn[0];

	return CCMP_HDR_LEN;
}