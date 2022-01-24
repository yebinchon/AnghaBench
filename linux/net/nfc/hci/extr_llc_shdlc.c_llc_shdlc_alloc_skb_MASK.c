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
struct llc_shdlc {scalar_t__ tx_headroom; scalar_t__ tx_tailroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SHDLC_LLC_HEAD_ROOM ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC2(struct llc_shdlc *shdlc,
					   int payload_len)
{
	struct sk_buff *skb;

	skb = FUNC0(shdlc->tx_headroom + SHDLC_LLC_HEAD_ROOM +
			shdlc->tx_tailroom + payload_len, GFP_KERNEL);
	if (skb)
		FUNC1(skb, shdlc->tx_headroom + SHDLC_LLC_HEAD_ROOM);

	return skb;
}