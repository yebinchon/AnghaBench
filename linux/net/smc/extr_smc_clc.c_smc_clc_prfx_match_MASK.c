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
struct socket {int /*<<< orphan*/  sk; } ;
struct smc_clc_msg_proposal_prefix {int /*<<< orphan*/  ipv6_prefixes_cnt; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct dst_entry* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct smc_clc_msg_proposal_prefix*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct smc_clc_msg_proposal_prefix*) ; 

int FUNC6(struct socket *clcsock,
		       struct smc_clc_msg_proposal_prefix *prop)
{
	struct dst_entry *dst = FUNC3(clcsock->sk);
	int rc;

	if (!dst) {
		rc = -ENOTCONN;
		goto out;
	}
	if (!dst->dev) {
		rc = -ENODEV;
		goto out_rel;
	}
	FUNC1();
	if (!prop->ipv6_prefixes_cnt)
		rc = FUNC4(dst->dev, prop);
	else
		rc = FUNC5(dst->dev, prop);
	FUNC2();
out_rel:
	FUNC0(dst);
out:
	return rc;
}