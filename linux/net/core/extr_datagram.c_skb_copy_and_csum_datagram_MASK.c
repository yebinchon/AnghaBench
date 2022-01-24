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
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int FUNC0 (struct sk_buff const*,int,struct iov_iter*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csum_and_copy_to_iter ; 

__attribute__((used)) static int FUNC1(const struct sk_buff *skb, int offset,
				      struct iov_iter *to, int len,
				      __wsum *csump)
{
	return FUNC0(skb, offset, to, len, true,
			csum_and_copy_to_iter, csump);
}