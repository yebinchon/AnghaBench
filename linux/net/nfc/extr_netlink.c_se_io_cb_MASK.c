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
struct sk_buff {int dummy; } ;
struct se_io_ctx {int /*<<< orphan*/  se_idx; int /*<<< orphan*/  dev_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_SE_APDU ; 
 int /*<<< orphan*/  NFC_ATTR_SE_INDEX ; 
 int /*<<< orphan*/  NFC_CMD_SE_IO ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct se_io_ctx*) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *context, u8 *apdu, size_t apdu_len, int err)
{
	struct se_io_ctx *ctx = context;
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC7(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		FUNC3(ctx);
		return;
	}

	hdr = FUNC2(msg, 0, 0, &nfc_genl_family, 0,
			  NFC_CMD_SE_IO);
	if (!hdr)
		goto free_msg;

	if (FUNC5(msg, NFC_ATTR_DEVICE_INDEX, ctx->dev_idx) ||
	    FUNC5(msg, NFC_ATTR_SE_INDEX, ctx->se_idx) ||
	    FUNC4(msg, NFC_ATTR_SE_APDU, apdu_len, apdu))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nfc_genl_family, msg, 0, 0, GFP_KERNEL);

	FUNC3(ctx);

	return;

nla_put_failure:
free_msg:
	FUNC6(msg);
	FUNC3(ctx);

	return;
}