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
struct iphdr {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC2(const struct sk_buff *skb, unsigned char *haddr)
{
	const struct iphdr *iph = (const struct iphdr *) FUNC1(skb);
	FUNC0(haddr, &iph->saddr, 4);
	return 4;
}