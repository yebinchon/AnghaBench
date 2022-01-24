#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  mac_len; } ;
struct mac802154_llsec_key {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  frame_counter; int /*<<< orphan*/  enabled; } ;
struct mac802154_llsec {int /*<<< orphan*/  lock; TYPE_2__ params; } ;
struct TYPE_6__ {scalar_t__ level; int /*<<< orphan*/  frame_counter; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  security_enabled; } ;
struct ieee802154_hdr {TYPE_3__ sec; int /*<<< orphan*/  dest; TYPE_1__ fc; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOKEY ; 
 int EOVERFLOW ; 
 scalar_t__ IEEE802154_FC_TYPE_DATA ; 
 scalar_t__ IEEE802154_MFR_SIZE ; 
 scalar_t__ IEEE802154_MTU ; 
 scalar_t__ IEEE802154_SCF_SECLEVEL_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (struct sk_buff*,struct mac802154_llsec*,struct ieee802154_hdr*,struct mac802154_llsec_key*) ; 
 int /*<<< orphan*/  FUNC7 (struct mac802154_llsec_key*) ; 
 struct mac802154_llsec_key* FUNC8 (struct mac802154_llsec*,struct ieee802154_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct mac802154_llsec *sec, struct sk_buff *skb)
{
	struct ieee802154_hdr hdr;
	int rc, authlen, hlen;
	struct mac802154_llsec_key *key;
	u32 frame_ctr;

	hlen = FUNC3(skb, &hdr);

	if (hlen < 0 || hdr.fc.type != IEEE802154_FC_TYPE_DATA)
		return -EINVAL;

	if (!hdr.fc.security_enabled ||
	    (hdr.sec.level == IEEE802154_SCF_SECLEVEL_NONE)) {
		FUNC13(skb, hlen);
		return 0;
	}

	authlen = FUNC5(&hdr.sec);

	if (skb->len + hlen + authlen + IEEE802154_MFR_SIZE > IEEE802154_MTU)
		return -EMSGSIZE;

	FUNC9();

	FUNC11(&sec->lock);

	if (!sec->params.enabled) {
		rc = -EINVAL;
		goto fail_read;
	}

	key = FUNC8(sec, &hdr, &hdr.dest, NULL);
	if (!key) {
		rc = -ENOKEY;
		goto fail_read;
	}

	FUNC12(&sec->lock);

	FUNC15(&sec->lock);

	frame_ctr = FUNC0(sec->params.frame_counter);
	hdr.sec.frame_counter = FUNC2(frame_ctr);
	if (frame_ctr == 0xFFFFFFFF) {
		FUNC16(&sec->lock);
		FUNC7(key);
		rc = -EOVERFLOW;
		goto fail;
	}

	sec->params.frame_counter = FUNC1(frame_ctr + 1);

	FUNC16(&sec->lock);

	FUNC10();

	skb->mac_len = FUNC4(skb, &hdr);
	FUNC14(skb);

	rc = FUNC6(skb, sec, &hdr, key);
	FUNC7(key);

	return rc;

fail_read:
	FUNC12(&sec->lock);
fail:
	FUNC10();
	return rc;
}