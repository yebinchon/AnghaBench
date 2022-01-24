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
struct nf_conn_acct {int dummy; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  IP_CT_DIR_REPLY ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conn_acct*,int /*<<< orphan*/ ,int) ; 
 struct nf_conn_acct* FUNC1 (struct nf_conn const*) ; 

__attribute__((used)) static int
FUNC2(struct sk_buff *skb, const struct nf_conn *ct, int type)
{
	struct nf_conn_acct *acct = FUNC1(ct);

	if (!acct)
		return 0;

	if (FUNC0(skb, acct, IP_CT_DIR_ORIGINAL, type) < 0)
		return -1;
	if (FUNC0(skb, acct, IP_CT_DIR_REPLY, type) < 0)
		return -1;

	return 0;
}