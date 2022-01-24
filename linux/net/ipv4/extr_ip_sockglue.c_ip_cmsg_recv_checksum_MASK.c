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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  IP_CHECKSUM ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct msghdr *msg, struct sk_buff *skb,
				  int tlen, int offset)
{
	__wsum csum = skb->csum;

	if (skb->ip_summed != CHECKSUM_COMPLETE)
		return;

	if (offset != 0) {
		int tend_off = FUNC3(skb) + tlen;
		csum = FUNC0(csum, FUNC2(skb, tend_off, offset, 0));
	}

	FUNC1(msg, SOL_IP, IP_CHECKSUM, sizeof(__wsum), &csum);
}