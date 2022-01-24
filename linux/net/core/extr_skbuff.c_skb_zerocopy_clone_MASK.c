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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *nskb, struct sk_buff *orig,
			      gfp_t gfp_mask)
{
	if (FUNC3(orig)) {
		if (FUNC3(nskb)) {
			/* !gfp_mask callers are verified to !skb_zcopy(nskb) */
			if (!gfp_mask) {
				FUNC0(1);
				return -ENOMEM;
			}
			if (FUNC2(nskb) == FUNC2(orig))
				return 0;
			if (FUNC1(nskb, GFP_ATOMIC))
				return -EIO;
		}
		FUNC4(nskb, FUNC2(orig), NULL);
	}
	return 0;
}