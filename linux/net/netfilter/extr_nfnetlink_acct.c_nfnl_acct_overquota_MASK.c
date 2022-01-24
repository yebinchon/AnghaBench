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
typedef  scalar_t__ u64 ;
struct nf_acct {int flags; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; scalar_t__ data; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int NFACCT_F_QUOTA ; 
 int NFACCT_F_QUOTA_PKTS ; 
 int NFACCT_NO_QUOTA ; 
 int /*<<< orphan*/  NFACCT_OVERQUOTA_BIT ; 
 int NFACCT_UNDERQUOTA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct nf_acct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

int FUNC3(struct net *net, struct nf_acct *nfacct)
{
	u64 now;
	u64 *quota;
	int ret = NFACCT_UNDERQUOTA;

	/* no place here if we don't have a quota */
	if (!(nfacct->flags & NFACCT_F_QUOTA))
		return NFACCT_NO_QUOTA;

	quota = (u64 *)nfacct->data;
	now = (nfacct->flags & NFACCT_F_QUOTA_PKTS) ?
	       FUNC0(&nfacct->pkts) : FUNC0(&nfacct->bytes);

	ret = now > *quota;

	if (now >= *quota &&
	    !FUNC2(NFACCT_OVERQUOTA_BIT, &nfacct->flags)) {
		FUNC1(net, nfacct);
	}

	return ret;
}