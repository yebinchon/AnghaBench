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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (struct sk_buff*,int) ; 

__attribute__((used)) static __be32 FUNC1(struct sk_buff *skb, int hdr_size)
{
	return *(__be32 *)(FUNC0(skb, hdr_size) + ETH_ALEN * 2 + 4);
}