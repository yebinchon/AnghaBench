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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ SHORT_H_SIZE ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 struct sk_buff* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct tipc_msg*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

struct sk_buff *FUNC10(uint user, uint type,
				uint hdr_sz, uint data_sz, u32 dnode,
				u32 onode, u32 dport, u32 oport, int errcode)
{
	struct tipc_msg *msg;
	struct sk_buff *buf;

	buf = FUNC7(hdr_sz + data_sz, GFP_ATOMIC);
	if (FUNC9(!buf))
		return NULL;

	msg = FUNC0(buf);
	FUNC8(onode, msg, user, type, hdr_sz, dnode);
	FUNC6(msg, hdr_sz + data_sz);
	FUNC5(msg, oport);
	FUNC2(msg, dport);
	FUNC3(msg, errcode);
	if (hdr_sz > SHORT_H_SIZE) {
		FUNC4(msg, onode);
		FUNC1(msg, dnode);
	}
	return buf;
}