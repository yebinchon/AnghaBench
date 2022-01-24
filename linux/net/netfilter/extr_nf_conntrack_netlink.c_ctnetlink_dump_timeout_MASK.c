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
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_TIMEOUT ; 
 long HZ ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 long FUNC1 (struct nf_conn const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nf_conn *ct)
{
	long timeout = FUNC1(ct) / HZ;

	if (FUNC2(skb, CTA_TIMEOUT, FUNC0(timeout)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}