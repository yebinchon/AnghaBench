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
struct sock {struct mem_cgroup* sk_memcg; } ;
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  tcpmem_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct mem_cgroup* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_cgroup_sockets_enabled ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mem_cgroup* root_mem_cgroup ; 

void FUNC6(struct sock *sk)
{
	struct mem_cgroup *memcg;

	if (!mem_cgroup_sockets_enabled)
		return;

	/*
	 * Socket cloning can throw us here with sk_memcg already
	 * filled. It won't however, necessarily happen from
	 * process context. So the test for root memcg given
	 * the current task's memcg won't help us in this case.
	 *
	 * Respecting the original socket's memcg is a better
	 * decision in this case.
	 */
	if (sk->sk_memcg) {
		FUNC1(&sk->sk_memcg->css);
		return;
	}

	FUNC4();
	memcg = FUNC3(current);
	if (memcg == root_mem_cgroup)
		goto out;
	if (!FUNC0(memory_cgrp_subsys) && !memcg->tcpmem_active)
		goto out;
	if (FUNC2(&memcg->css))
		sk->sk_memcg = memcg;
out:
	FUNC5();
}