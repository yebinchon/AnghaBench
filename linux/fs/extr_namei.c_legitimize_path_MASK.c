#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_1__* dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {int /*<<< orphan*/  m_seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_seq; int /*<<< orphan*/  d_lockref; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(struct nameidata *nd,
			    struct path *path, unsigned seq)
{
	int res = FUNC0(path->mnt, nd->m_seq);
	if (FUNC3(res)) {
		if (res > 0)
			path->mnt = NULL;
		path->dentry = NULL;
		return false;
	}
	if (FUNC3(!FUNC1(&path->dentry->d_lockref))) {
		path->dentry = NULL;
		return false;
	}
	return !FUNC2(&path->dentry->d_seq, seq);
}