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

/* Variables and functions */
 int /*<<< orphan*/  nfs4_dns_resolver_ops ; 
 int /*<<< orphan*/  nfs_dns_resolver_block ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int err;

	err = FUNC0(&nfs4_dns_resolver_ops);
	if (err < 0)
		goto out;
	err = FUNC1(&nfs_dns_resolver_block);
	if (err < 0)
		goto out1;
	return 0;
out1:
	FUNC2(&nfs4_dns_resolver_ops);
out:
	return err;
}