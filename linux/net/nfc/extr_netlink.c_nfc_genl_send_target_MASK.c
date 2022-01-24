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
struct sk_buff {int dummy; } ;
struct nfc_target {scalar_t__ nfcid1_len; scalar_t__ sensb_res_len; scalar_t__ sensf_res_len; int /*<<< orphan*/  iso15693_uid; int /*<<< orphan*/  iso15693_dsfid; scalar_t__ is_iso15693; int /*<<< orphan*/  sensf_res; int /*<<< orphan*/  sensb_res; int /*<<< orphan*/  nfcid1; int /*<<< orphan*/  sel_res; int /*<<< orphan*/  sens_res; int /*<<< orphan*/  supported_protocols; int /*<<< orphan*/  idx; } ;
struct netlink_callback {TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFC_ATTR_PROTOCOLS ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_ISO15693_DSFID ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_ISO15693_UID ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_NFCID1 ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_SEL_RES ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_SENSB_RES ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_SENSF_RES ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_SENS_RES ; 
 int /*<<< orphan*/  NFC_CMD_GET_TARGET ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *msg, struct nfc_target *target,
				struct netlink_callback *cb, int flags)
{
	void *hdr;

	hdr = FUNC4(msg, FUNC0(cb->skb).portid, cb->nlh->nlmsg_seq,
			  &nfc_genl_family, flags, NFC_CMD_GET_TARGET);
	if (!hdr)
		return -EMSGSIZE;

	FUNC1(cb, hdr);

	if (FUNC7(msg, NFC_ATTR_TARGET_INDEX, target->idx) ||
	    FUNC7(msg, NFC_ATTR_PROTOCOLS, target->supported_protocols) ||
	    FUNC6(msg, NFC_ATTR_TARGET_SENS_RES, target->sens_res) ||
	    FUNC8(msg, NFC_ATTR_TARGET_SEL_RES, target->sel_res))
		goto nla_put_failure;
	if (target->nfcid1_len > 0 &&
	    FUNC5(msg, NFC_ATTR_TARGET_NFCID1, target->nfcid1_len,
		    target->nfcid1))
		goto nla_put_failure;
	if (target->sensb_res_len > 0 &&
	    FUNC5(msg, NFC_ATTR_TARGET_SENSB_RES, target->sensb_res_len,
		    target->sensb_res))
		goto nla_put_failure;
	if (target->sensf_res_len > 0 &&
	    FUNC5(msg, NFC_ATTR_TARGET_SENSF_RES, target->sensf_res_len,
		    target->sensf_res))
		goto nla_put_failure;

	if (target->is_iso15693) {
		if (FUNC8(msg, NFC_ATTR_TARGET_ISO15693_DSFID,
			       target->iso15693_dsfid) ||
		    FUNC5(msg, NFC_ATTR_TARGET_ISO15693_UID,
			    sizeof(target->iso15693_uid), target->iso15693_uid))
			goto nla_put_failure;
	}

	FUNC3(msg, hdr);
	return 0;

nla_put_failure:
	FUNC2(msg, hdr);
	return -EMSGSIZE;
}