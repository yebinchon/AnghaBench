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
struct nfc_llcp_local {int /*<<< orphan*/  miux; int /*<<< orphan*/  rw; int /*<<< orphan*/  lto; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_LLC_PARAM_LTO ; 
 int /*<<< orphan*/  NFC_ATTR_LLC_PARAM_MIUX ; 
 int /*<<< orphan*/  NFC_ATTR_LLC_PARAM_RW ; 
 int /*<<< orphan*/  NFC_CMD_LLC_GET_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *msg,
				struct nfc_llcp_local *local,
				u32 portid, u32 seq)
{
	void *hdr;

	hdr = FUNC3(msg, portid, seq, &nfc_genl_family, 0,
			  NFC_CMD_LLC_GET_PARAMS);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC5(msg, NFC_ATTR_DEVICE_INDEX, local->dev->idx) ||
	    FUNC6(msg, NFC_ATTR_LLC_PARAM_LTO, local->lto) ||
	    FUNC6(msg, NFC_ATTR_LLC_PARAM_RW, local->rw) ||
	    FUNC4(msg, NFC_ATTR_LLC_PARAM_MIUX, FUNC0(local->miux)))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}