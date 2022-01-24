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

/* Variables and functions */
 int TCA_FLOWER_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*,int,int,void*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
			   void *val, int val_type,
			   void *mask, int mask_type, int len)
{
	int err;

	if (!FUNC0(mask, 0, len))
		return 0;
	err = FUNC1(skb, val_type, len, val);
	if (err)
		return err;
	if (mask_type != TCA_FLOWER_UNSPEC) {
		err = FUNC1(skb, mask_type, len, mask);
		if (err)
			return err;
	}
	return 0;
}