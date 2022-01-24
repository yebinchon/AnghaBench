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
struct seq_file {int dummy; } ;
struct kernfs_root {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct cgroup_root {int dummy; } ;
struct cgroup {int /*<<< orphan*/  kn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PATH_MAX ; 
 struct cgroup_root* FUNC0 (struct kernfs_root*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 struct cgroup* FUNC1 (struct cgroup_root*) ; 
 int FUNC2 (struct kernfs_node*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct seq_file *sf, struct kernfs_node *kf_node,
		     struct kernfs_root *kf_root)
{
	int len = 0;
	char *buf = NULL;
	struct cgroup_root *kf_cgroot = FUNC0(kf_root);
	struct cgroup *ns_cgroup;

	buf = FUNC4(PATH_MAX, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC6(&css_set_lock);
	ns_cgroup = FUNC1(kf_cgroot);
	len = FUNC2(kf_node, ns_cgroup->kn, buf, PATH_MAX);
	FUNC7(&css_set_lock);

	if (len >= PATH_MAX)
		len = -ERANGE;
	else if (len > 0) {
		FUNC5(sf, buf, " \t\n\\");
		len = 0;
	}
	FUNC3(buf);
	return len;
}