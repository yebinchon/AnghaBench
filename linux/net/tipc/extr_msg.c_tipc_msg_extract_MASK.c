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
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MIN_H_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct tipc_msg*,int) ; 
 int FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff**) ; 
 scalar_t__ FUNC10 (int) ; 

bool FUNC11(struct sk_buff *skb, struct sk_buff **iskb, int *pos)
{
	struct tipc_msg *hdr, *ihdr;
	int imsz;

	*iskb = NULL;
	if (FUNC10(FUNC7(skb)))
		goto none;

	hdr = FUNC1(skb);
	if (FUNC10(*pos > (FUNC4(hdr) - MIN_H_SIZE)))
		goto none;

	ihdr = (struct tipc_msg *)(FUNC3(hdr) + *pos);
	imsz = FUNC5(ihdr);

	if ((*pos + imsz) > FUNC4(hdr))
		goto none;

	*iskb = FUNC8(imsz, GFP_ATOMIC);
	if (!*iskb)
		goto none;

	FUNC6(*iskb, ihdr, imsz);
	if (FUNC10(!FUNC9(iskb)))
		goto none;

	*pos += FUNC0(imsz);
	return true;
none:
	FUNC2(skb);
	FUNC2(*iskb);
	*iskb = NULL;
	return false;
}