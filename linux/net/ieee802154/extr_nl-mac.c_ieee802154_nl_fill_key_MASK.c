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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  name; } ;
struct ieee802154_llsec_key_entry {TYPE_1__* key; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  commands ;
struct TYPE_2__ {int frame_types; int /*<<< orphan*/ * key; int /*<<< orphan*/  cmd_frame_ids; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IEEE802154_ATTR_DEV_INDEX ; 
 int /*<<< orphan*/  IEEE802154_ATTR_DEV_NAME ; 
 int /*<<< orphan*/  IEEE802154_ATTR_LLSEC_KEY_BYTES ; 
 int /*<<< orphan*/  IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS ; 
 int /*<<< orphan*/  IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES ; 
 int /*<<< orphan*/  IEEE802154_FC_TYPE_MAC_CMD ; 
 int IEEE802154_LLSEC_KEY_SIZE ; 
 int /*<<< orphan*/  IEEE802154_LLSEC_LIST_KEY ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nl802154_family ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *msg, u32 portid, u32 seq,
		       const struct ieee802154_llsec_key_entry *key,
		       const struct net_device *dev)
{
	void *hdr;
	u32 commands[256 / 32];

	hdr = FUNC3(msg, 0, seq, &nl802154_family, NLM_F_MULTI,
			  IEEE802154_LLSEC_LIST_KEY);
	if (!hdr)
		goto out;

	if (FUNC7(msg, IEEE802154_ATTR_DEV_NAME, dev->name) ||
	    FUNC8(msg, IEEE802154_ATTR_DEV_INDEX, dev->ifindex) ||
	    FUNC4(msg, &key->id) ||
	    FUNC9(msg, IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES,
		       key->key->frame_types))
		goto nla_put_failure;

	if (key->key->frame_types & FUNC0(IEEE802154_FC_TYPE_MAC_CMD)) {
		FUNC5(commands, 0, sizeof(commands));
		commands[7] = key->key->cmd_frame_ids;
		if (FUNC6(msg, IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS,
			    sizeof(commands), commands))
			goto nla_put_failure;
	}

	if (FUNC6(msg, IEEE802154_ATTR_LLSEC_KEY_BYTES,
		    IEEE802154_LLSEC_KEY_SIZE, key->key->key))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

nla_put_failure:
	FUNC1(msg, hdr);
out:
	return -EMSGSIZE;
}