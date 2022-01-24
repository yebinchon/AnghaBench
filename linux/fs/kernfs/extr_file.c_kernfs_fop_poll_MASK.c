#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kernfs_open_file {int dummy; } ;
struct TYPE_5__ {TYPE_3__* ops; } ;
struct kernfs_node {TYPE_2__ attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_6__ {int (* poll ) (struct kernfs_open_file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int DEFAULT_POLLMASK ; 
 int EPOLLERR ; 
 int EPOLLPRI ; 
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kernfs_open_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 struct kernfs_open_file* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 int FUNC5 (struct kernfs_open_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *filp, poll_table *wait)
{
	struct kernfs_open_file *of = FUNC3(filp);
	struct kernfs_node *kn = FUNC0(filp->f_path.dentry);
	__poll_t ret;

	if (!FUNC2(kn))
		return DEFAULT_POLLMASK|EPOLLERR|EPOLLPRI;

	if (kn->attr.ops->poll)
		ret = kn->attr.ops->poll(of, wait);
	else
		ret = FUNC1(of, wait);

	FUNC4(kn);
	return ret;
}