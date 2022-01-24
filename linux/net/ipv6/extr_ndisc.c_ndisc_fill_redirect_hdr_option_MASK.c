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

/* Variables and functions */
 int /*<<< orphan*/  ND_OPT_REDIRECT_HDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb,
					   struct sk_buff *orig_skb,
					   int rd_len)
{
	u8 *opt = FUNC3(skb, rd_len);

	FUNC0(opt, 0, 8);
	*(opt++) = ND_OPT_REDIRECT_HDR;
	*(opt++) = (rd_len >> 3);
	opt += 6;

	FUNC1(orig_skb, FUNC2(orig_skb), opt,
		      rd_len - 8);
}