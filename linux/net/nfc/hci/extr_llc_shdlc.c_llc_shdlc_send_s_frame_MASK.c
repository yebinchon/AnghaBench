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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct llc_shdlc {int (* xmit_to_drv ) (int /*<<< orphan*/ ,struct sk_buff*) ;int /*<<< orphan*/  hdev; } ;
typedef  enum sframe_type { ____Placeholder_sframe_type } sframe_type ;

/* Variables and functions */
 int ENOMEM ; 
 int SHDLC_CONTROL_HEAD_S ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct llc_shdlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct llc_shdlc *shdlc,
				  enum sframe_type sframe_type, int nr)
{
	int r;
	struct sk_buff *skb;

	FUNC2("sframe_type=%d nr=%d\n", sframe_type, nr);

	skb = FUNC1(shdlc, 0);
	if (skb == NULL)
		return -ENOMEM;

	*(u8 *)FUNC3(skb, 1) = SHDLC_CONTROL_HEAD_S | (sframe_type << 3) | nr;

	r = shdlc->xmit_to_drv(shdlc->hdev, skb);

	FUNC0(skb);

	return r;
}