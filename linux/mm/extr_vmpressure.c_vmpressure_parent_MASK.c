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
struct vmpressure {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 struct mem_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 struct vmpressure* FUNC1 (struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC2 (struct mem_cgroup*) ; 
 struct cgroup_subsys_state* FUNC3 (struct vmpressure*) ; 

__attribute__((used)) static struct vmpressure *FUNC4(struct vmpressure *vmpr)
{
	struct cgroup_subsys_state *css = FUNC3(vmpr);
	struct mem_cgroup *memcg = FUNC0(css);

	memcg = FUNC2(memcg);
	if (!memcg)
		return NULL;
	return FUNC1(memcg);
}