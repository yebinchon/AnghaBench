#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct mac802154_llsec_key {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  seclevel_exempt; } ;
struct mac802154_llsec_device {TYPE_4__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;
struct mac802154_llsec {int /*<<< orphan*/  lock; TYPE_1__ params; } ;
struct ieee802154_llsec_seclevel {int sec_levels; scalar_t__ device_override; } ;
struct ieee802154_llsec_key_id {int dummy; } ;
struct TYPE_7__ {scalar_t__ level; int /*<<< orphan*/  frame_counter; } ;
struct TYPE_6__ {scalar_t__ version; int /*<<< orphan*/  type; int /*<<< orphan*/  security_enabled; } ;
struct ieee802154_hdr {TYPE_3__ sec; TYPE_2__ fc; int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOKEY ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct mac802154_llsec*,struct ieee802154_hdr*,struct mac802154_llsec_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mac802154_llsec_key*) ; 
 struct mac802154_llsec_device* FUNC5 (struct mac802154_llsec*,int /*<<< orphan*/ *) ; 
 struct mac802154_llsec_key* FUNC6 (struct mac802154_llsec*,struct ieee802154_hdr*,int /*<<< orphan*/ *,struct ieee802154_llsec_key_id*) ; 
 scalar_t__ FUNC7 (struct mac802154_llsec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee802154_llsec_seclevel*) ; 
 int FUNC8 (struct mac802154_llsec_device*,struct ieee802154_llsec_key_id*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct mac802154_llsec *sec, struct sk_buff *skb)
{
	struct ieee802154_hdr hdr;
	struct mac802154_llsec_key *key;
	struct ieee802154_llsec_key_id key_id;
	struct mac802154_llsec_device *dev;
	struct ieee802154_llsec_seclevel seclevel;
	int err;
	__le64 dev_addr;
	u32 frame_ctr;

	if (FUNC1(skb, &hdr) < 0)
		return -EINVAL;
	if (!hdr.fc.security_enabled)
		return 0;
	if (hdr.fc.version == 0)
		return -EINVAL;

	FUNC11(&sec->lock);
	if (!sec->params.enabled) {
		FUNC12(&sec->lock);
		return -EINVAL;
	}
	FUNC12(&sec->lock);

	FUNC9();

	key = FUNC6(sec, &hdr, &hdr.source, &key_id);
	if (!key) {
		err = -ENOKEY;
		goto fail;
	}

	dev = FUNC5(sec, &hdr.source);
	if (!dev) {
		err = -EINVAL;
		goto fail_dev;
	}

	if (FUNC7(sec, hdr.fc.type, 0, &seclevel) < 0) {
		err = -EINVAL;
		goto fail_dev;
	}

	if (!(seclevel.sec_levels & FUNC0(hdr.sec.level)) &&
	    (hdr.sec.level == 0 && seclevel.device_override &&
	     !dev->dev.seclevel_exempt)) {
		err = -EINVAL;
		goto fail_dev;
	}

	frame_ctr = FUNC2(hdr.sec.frame_counter);

	if (frame_ctr == 0xffffffff) {
		err = -EOVERFLOW;
		goto fail_dev;
	}

	err = FUNC8(dev, &key_id, frame_ctr);
	if (err)
		goto fail_dev;

	dev_addr = dev->dev.hwaddr;

	FUNC10();

	err = FUNC3(skb, sec, &hdr, key, dev_addr);
	FUNC4(key);
	return err;

fail_dev:
	FUNC4(key);
fail:
	FUNC10();
	return err;
}