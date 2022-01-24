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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ INT_H_SIZE ; 
 int /*<<< orphan*/  NAME_DISTRIBUTOR ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,scalar_t__) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct tipc_msg*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct net*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct net *net, u32 type, u32 size,
					 u32 dest)
{
	struct sk_buff *buf = FUNC2(INT_H_SIZE + size, GFP_ATOMIC);
	u32 self = FUNC4(net);
	struct tipc_msg *msg;

	if (buf != NULL) {
		msg = FUNC0(buf);
		FUNC3(self, msg, NAME_DISTRIBUTOR,
			      type, INT_H_SIZE, dest);
		FUNC1(msg, INT_H_SIZE + size);
	}
	return buf;
}