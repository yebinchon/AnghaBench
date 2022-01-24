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
typedef  int /*<<< orphan*/  sum ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const u32 *src,
				 __wsum fsum, __wsum tsum, int csum_offset)
{
	__sum16 sum;

	if (FUNC1(skb, csum_offset, &sum, sizeof(sum)) < 0)
		return -1;

	FUNC0(&sum, fsum, tsum);
	if (FUNC2(skb, csum_offset + sizeof(sum)) ||
	    FUNC3(skb, csum_offset, &sum, sizeof(sum)) < 0)
		return -1;

	return 0;
}