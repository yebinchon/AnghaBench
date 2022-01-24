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
struct cgroup_subsys {int /*<<< orphan*/  cfts; int /*<<< orphan*/  id; } ;
struct cftype {char* name; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int FUNC0 (struct cftype*,int) ; 
 int FUNC1 (struct cgroup_subsys*,struct cftype*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct cftype*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct cgroup_subsys *ss, struct cftype *cfts)
{
	int ret;

	if (!FUNC3(ss->id))
		return 0;

	if (!cfts || cfts[0].name[0] == '\0')
		return 0;

	ret = FUNC1(ss, cfts);
	if (ret)
		return ret;

	FUNC5(&cgroup_mutex);

	FUNC4(&cfts->node, &ss->cfts);
	ret = FUNC0(cfts, true);
	if (ret)
		FUNC2(cfts);

	FUNC6(&cgroup_mutex);
	return ret;
}