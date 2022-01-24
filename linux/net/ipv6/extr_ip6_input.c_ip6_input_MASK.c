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
struct sk_buff {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip6_input_finish ; 

int FUNC2(struct sk_buff *skb)
{
	return FUNC0(NFPROTO_IPV6, NF_INET_LOCAL_IN,
		       FUNC1(skb->dev), NULL, skb, skb->dev, NULL,
		       ip6_input_finish);
}