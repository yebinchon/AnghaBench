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
typedef  int /*<<< orphan*/  endmark ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ MRP_END_MARK ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC1(struct sk_buff *skb, int *offset)
{
	__be16 endmark;

	if (FUNC0(skb, *offset, &endmark, sizeof(endmark)) < 0)
		return -1;
	if (endmark == MRP_END_MARK) {
		*offset += sizeof(endmark);
		return -1;
	}
	return 0;
}