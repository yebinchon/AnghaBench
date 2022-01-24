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
struct nf_conn_counter {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_conn_acct* FUNC3 (struct nf_conn*) ; 

__attribute__((used)) static inline void FUNC4(struct nf_conn *ct,
				     enum ip_conntrack_info ctinfo,
				     unsigned int len)
{
	struct nf_conn_acct *acct;

	acct = FUNC3(ct);
	if (acct) {
		struct nf_conn_counter *counter = acct->counter;

		FUNC2(&counter[FUNC0(ctinfo)].packets);
		FUNC1(len, &counter[FUNC0(ctinfo)].bytes);
	}
}