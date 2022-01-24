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
struct sk_buff {int dummy; } ;
struct llc_shdlc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  U_FRAME_UA ; 
 struct sk_buff* FUNC0 (struct llc_shdlc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct llc_shdlc*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct llc_shdlc *shdlc)
{
	struct sk_buff *skb;

	FUNC2("\n");

	skb = FUNC0(shdlc, 0);
	if (skb == NULL)
		return -ENOMEM;

	return FUNC1(shdlc, skb, U_FRAME_UA);
}