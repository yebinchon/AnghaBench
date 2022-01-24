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
struct sk_buff {scalar_t__ ip_summed; } ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int NFQA_SKB_CSUMNOTREADY ; 
 int NFQA_SKB_CSUM_NOTVERIFIED ; 
 int NFQA_SKB_GSO ; 
 int /*<<< orphan*/  NFQA_SKB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *nlskb, struct sk_buff *packet,
		      bool csum_verify)
{
	__u32 flags = 0;

	if (packet->ip_summed == CHECKSUM_PARTIAL)
		flags = NFQA_SKB_CSUMNOTREADY;
	else if (csum_verify)
		flags = NFQA_SKB_CSUM_NOTVERIFIED;

	if (FUNC2(packet))
		flags |= NFQA_SKB_GSO;

	return flags ? FUNC1(nlskb, NFQA_SKB_INFO, FUNC0(flags)) : 0;
}