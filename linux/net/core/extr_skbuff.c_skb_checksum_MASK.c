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
struct skb_checksum_ops {int /*<<< orphan*/  combine; int /*<<< orphan*/  update; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*,int,int,int /*<<< orphan*/ ,struct skb_checksum_ops const*) ; 
 int /*<<< orphan*/  csum_block_add_ext ; 
 int /*<<< orphan*/  csum_partial_ext ; 

__wsum FUNC1(const struct sk_buff *skb, int offset,
		    int len, __wsum csum)
{
	const struct skb_checksum_ops ops = {
		.update  = csum_partial_ext,
		.combine = csum_block_add_ext,
	};

	return FUNC0(skb, offset, len, csum, &ops);
}