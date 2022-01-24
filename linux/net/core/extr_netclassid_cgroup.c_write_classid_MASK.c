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
typedef  scalar_t__ u32 ;
struct task_struct {int /*<<< orphan*/  files; } ;
struct css_task_iter {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_cls_state {scalar_t__ classid; } ;
struct cftype {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct cgroup_cls_state* FUNC2 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct css_task_iter*) ; 
 struct task_struct* FUNC4 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgroup_subsys_state*,int /*<<< orphan*/ ,struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  update_classid_sock ; 

__attribute__((used)) static int FUNC9(struct cgroup_subsys_state *css, struct cftype *cft,
			 u64 value)
{
	struct cgroup_cls_state *cs = FUNC2(css);
	struct css_task_iter it;
	struct task_struct *p;

	FUNC0();

	cs->classid = (u32)value;

	FUNC5(css, 0, &it);
	while ((p = FUNC4(&it))) {
		FUNC7(p);
		FUNC6(p->files, 0, update_classid_sock,
			   (void *)(unsigned long)cs->classid);
		FUNC8(p);
		FUNC1();
	}
	FUNC3(&it);

	return 0;
}