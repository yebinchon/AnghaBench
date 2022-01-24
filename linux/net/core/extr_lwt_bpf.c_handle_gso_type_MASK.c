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
struct skb_shared_info {unsigned int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int SKB_GSO_DODGY ; 
 int /*<<< orphan*/  FUNC0 (struct skb_shared_info*,int) ; 
 struct skb_shared_info* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, unsigned int gso_type,
			   int encap_len)
{
	struct skb_shared_info *shinfo = FUNC1(skb);

	gso_type |= SKB_GSO_DODGY;
	shinfo->gso_type |= gso_type;
	FUNC0(shinfo, encap_len);
	shinfo->gso_segs = 0;
	return 0;
}