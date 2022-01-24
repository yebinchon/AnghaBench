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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {scalar_t__ rw; int /*<<< orphan*/  miux; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int /*<<< orphan*/  tx_queue; scalar_t__ rw; int /*<<< orphan*/  miux; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ LLCP_MAX_MIUX ; 
 scalar_t__ LLCP_MAX_RW ; 
 int /*<<< orphan*/  LLCP_PDU_CC ; 
 int /*<<< orphan*/  LLCP_TLV_MIUX ; 
 int /*<<< orphan*/  LLCP_TLV_RW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__*,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct nfc_llcp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC8(struct nfc_llcp_sock *sock)
{
	struct nfc_llcp_local *local;
	struct sk_buff *skb;
	u8 *miux_tlv = NULL, miux_tlv_length;
	u8 *rw_tlv = NULL, rw_tlv_length, rw;
	int err;
	u16 size = 0;
	__be16 miux;

	FUNC5("Sending CC\n");

	local = sock->local;
	if (local == NULL)
		return -ENODEV;

	/* If the socket parameters are not set, use the local ones */
	miux = FUNC0(sock->miux) > LLCP_MAX_MIUX ?
		local->miux : sock->miux;
	rw = sock->rw > LLCP_MAX_RW ? local->rw : sock->rw;

	miux_tlv = FUNC4(LLCP_TLV_MIUX, (u8 *)&miux, 0,
				      &miux_tlv_length);
	if (!miux_tlv) {
		err = -ENOMEM;
		goto error_tlv;
	}
	size += miux_tlv_length;

	rw_tlv = FUNC4(LLCP_TLV_RW, &rw, 0, &rw_tlv_length);
	if (!rw_tlv) {
		err = -ENOMEM;
		goto error_tlv;
	}
	size += rw_tlv_length;

	skb = FUNC3(sock, LLCP_PDU_CC, size);
	if (skb == NULL) {
		err = -ENOMEM;
		goto error_tlv;
	}

	FUNC2(skb, miux_tlv, miux_tlv_length);
	FUNC2(skb, rw_tlv, rw_tlv_length);

	FUNC7(&local->tx_queue, skb);

	err = 0;

error_tlv:
	if (err)
		FUNC6("error %d\n", err);

	FUNC1(miux_tlv);
	FUNC1(rw_tlv);

	return err;
}