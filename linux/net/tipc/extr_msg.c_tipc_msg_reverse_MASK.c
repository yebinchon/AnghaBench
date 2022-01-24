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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int BASIC_H_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_FORWARD_SIZE ; 
 int SHORT_H_SIZE ; 
 int TIPC_ERR_OVERLOAD ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_msg*,int) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 struct sk_buff* FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 

bool FUNC25(u32 own_node,  struct sk_buff **skb, int err)
{
	struct sk_buff *_skb = *skb;
	struct tipc_msg *_hdr, *hdr;
	int hlen, dlen;

	if (FUNC22(_skb))
		goto exit;
	_hdr = FUNC0(_skb);
	dlen = FUNC3(uint, FUNC5(_hdr), MAX_FORWARD_SIZE);
	hlen = FUNC9(_hdr);

	if (FUNC6(_hdr))
		goto exit;
	if (FUNC8(_hdr))
		goto exit;

	/* Never return SHORT header */
	if (hlen == SHORT_H_SIZE)
		hlen = BASIC_H_SIZE;

	/* Don't return data along with SYN+, - sender has a clone */
	if (FUNC10(_hdr) && err == TIPC_ERR_OVERLOAD)
		dlen = 0;

	/* Allocate new buffer to return */
	*skb = FUNC24(hlen + dlen, GFP_ATOMIC);
	if (!*skb)
		goto exit;
	FUNC2((*skb)->data, _skb->data, FUNC9(_hdr));
	FUNC2((*skb)->data + hlen, FUNC4(_hdr), dlen);

	/* Build reverse header in new buffer */
	hdr = FUNC0(*skb);
	FUNC16(hdr, hlen);
	FUNC15(hdr, err);
	FUNC17(hdr, 0);
	FUNC19(hdr, FUNC7(_hdr));
	FUNC14(hdr, FUNC11(_hdr));
	FUNC13(hdr, FUNC12(_hdr));
	FUNC20(hdr, own_node);
	FUNC18(hdr, own_node);
	FUNC21(hdr, hlen + dlen);
	FUNC23(_skb);
	FUNC1(_skb);
	return true;
exit:
	FUNC1(_skb);
	*skb = NULL;
	return false;
}