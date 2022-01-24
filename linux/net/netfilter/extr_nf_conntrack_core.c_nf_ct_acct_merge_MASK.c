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
struct nf_conn_counter {int /*<<< orphan*/  bytes; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 struct nf_conn_acct* FUNC2 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
			     const struct nf_conn *loser_ct)
{
	struct nf_conn_acct *acct;

	acct = FUNC2(loser_ct);
	if (acct) {
		struct nf_conn_counter *counter = acct->counter;
		unsigned int bytes;

		/* u32 should be fine since we must have seen one packet. */
		bytes = FUNC1(&counter[FUNC0(ctinfo)].bytes);
		FUNC3(ct, ctinfo, bytes);
	}
}