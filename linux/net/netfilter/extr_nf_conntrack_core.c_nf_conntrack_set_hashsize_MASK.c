#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kernel_param {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * net_ns; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  nf_conntrack_hash ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (char const*,struct kernel_param const*) ; 

int FUNC3(const char *val, const struct kernel_param *kp)
{
	unsigned int hashsize;
	int rc;

	if (current->nsproxy->net_ns != &init_net)
		return -EOPNOTSUPP;

	/* On boot, we can set this without any fancy locking. */
	if (!nf_conntrack_hash)
		return FUNC2(val, kp);

	rc = FUNC0(val, 0, &hashsize);
	if (rc)
		return rc;

	return FUNC1(hashsize);
}