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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nf_conn {int /*<<< orphan*/  timeout; int /*<<< orphan*/  status; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_FIXED_TIMEOUT_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nf_conn*) ; 
 scalar_t__ nfct_time_stamp ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct nf_conn *ct,
			  enum ip_conntrack_info ctinfo,
			  const struct sk_buff *skb,
			  u32 extra_jiffies,
			  bool do_acct)
{
	/* Only update if this is not a fixed timeout */
	if (FUNC4(IPS_FIXED_TIMEOUT_BIT, &ct->status))
		goto acct;

	/* If not in hash table, timer will not be active yet */
	if (FUNC3(ct))
		extra_jiffies += nfct_time_stamp;

	if (FUNC0(ct->timeout) != extra_jiffies)
		FUNC1(ct->timeout, extra_jiffies);
acct:
	if (do_acct)
		FUNC2(ct, ctinfo, skb->len);
}