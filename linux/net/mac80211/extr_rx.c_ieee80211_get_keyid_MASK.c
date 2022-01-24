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
typedef  int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ieee80211_cipher_scheme {int hdr_len; int key_idx_off; int key_idx_shift; int key_idx_mask; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_WEP_IV_LEN ; 
 int NUM_DEFAULT_KEYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,int*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			       const struct ieee80211_cipher_scheme *cs)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	__le16 fc;
	int hdrlen;
	int minlen;
	u8 key_idx_off;
	u8 key_idx_shift;
	u8 keyid;

	fc = hdr->frame_control;
	hdrlen = FUNC0(fc);

	if (cs) {
		minlen = hdrlen + cs->hdr_len;
		key_idx_off = hdrlen + cs->key_idx_off;
		key_idx_shift = cs->key_idx_shift;
	} else {
		/* WEP, TKIP, CCMP and GCMP */
		minlen = hdrlen + IEEE80211_WEP_IV_LEN;
		key_idx_off = hdrlen + 3;
		key_idx_shift = 6;
	}

	if (FUNC2(skb->len < minlen))
		return -EINVAL;

	FUNC1(skb, key_idx_off, &keyid, 1);

	if (cs)
		keyid &= cs->key_idx_mask;
	keyid >>= key_idx_shift;

	/* cs could use more than the usual two bits for the keyid */
	if (FUNC2(keyid >= NUM_DEFAULT_KEYS))
		return -EINVAL;

	return keyid;
}