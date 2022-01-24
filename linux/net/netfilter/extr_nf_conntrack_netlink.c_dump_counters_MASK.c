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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conn_counter {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  enum ctattr_type { ____Placeholder_ctattr_type } ctattr_type ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_COUNTERS_BYTES ; 
 int CTA_COUNTERS_ORIG ; 
 int /*<<< orphan*/  CTA_COUNTERS_PACKETS ; 
 int /*<<< orphan*/  CTA_COUNTERS_PAD ; 
 int CTA_COUNTERS_REPLY ; 
 int IPCTNL_MSG_CT_GET_CTRZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct nf_conn_acct *acct,
	      enum ip_conntrack_dir dir, int type)
{
	enum ctattr_type attr = dir ? CTA_COUNTERS_REPLY: CTA_COUNTERS_ORIG;
	struct nf_conn_counter *counter = acct->counter;
	struct nlattr *nest_count;
	u64 pkts, bytes;

	if (type == IPCTNL_MSG_CT_GET_CTRZERO) {
		pkts = FUNC1(&counter[dir].packets, 0);
		bytes = FUNC1(&counter[dir].bytes, 0);
	} else {
		pkts = FUNC0(&counter[dir].packets);
		bytes = FUNC0(&counter[dir].bytes);
	}

	nest_count = FUNC4(skb, attr);
	if (!nest_count)
		goto nla_put_failure;

	if (FUNC5(skb, CTA_COUNTERS_PACKETS, FUNC2(pkts),
			 CTA_COUNTERS_PAD) ||
	    FUNC5(skb, CTA_COUNTERS_BYTES, FUNC2(bytes),
			 CTA_COUNTERS_PAD))
		goto nla_put_failure;

	FUNC3(skb, nest_count);

	return 0;

nla_put_failure:
	return -1;
}