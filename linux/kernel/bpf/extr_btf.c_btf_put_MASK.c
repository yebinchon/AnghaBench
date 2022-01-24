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
struct btf {int /*<<< orphan*/  rcu; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf*) ; 
 int /*<<< orphan*/  btf_free_rcu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct btf *btf)
{
	if (btf && FUNC2(&btf->refcnt)) {
		FUNC0(btf);
		FUNC1(&btf->rcu, btf_free_rcu);
	}
}