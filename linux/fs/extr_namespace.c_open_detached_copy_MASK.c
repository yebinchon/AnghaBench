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
struct user_namespace {int dummy; } ;
struct path {int /*<<< orphan*/ * mnt; } ;
struct mount {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  mnt; int /*<<< orphan*/  mnt_list; int /*<<< orphan*/  list; struct mount* root; int /*<<< orphan*/  mounts; struct mount* mnt_ns; } ;
struct mnt_namespace {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  mnt; int /*<<< orphan*/  mnt_list; int /*<<< orphan*/  list; struct mnt_namespace* root; int /*<<< orphan*/  mounts; struct mnt_namespace* mnt_ns; } ;
struct file {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  mnt; int /*<<< orphan*/  mnt_list; int /*<<< orphan*/  list; struct file* root; int /*<<< orphan*/  mounts; struct file* mnt_ns; } ;
struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {TYPE_1__* mnt_ns; } ;
struct TYPE_4__ {struct user_namespace* user_ns; } ;

/* Variables and functions */
 struct mount* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FMODE_NEED_UNMOUNT ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  O_PATH ; 
 struct mount* FUNC2 (struct path*,int) ; 
 struct mount* FUNC3 (struct user_namespace*,int) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct mount* FUNC5 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct mount* FUNC14 (struct mount*,struct mount*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static struct file *FUNC16(struct path *path, bool recursive)
{
	struct user_namespace *user_ns = current->nsproxy->mnt_ns->user_ns;
	struct mnt_namespace *ns = FUNC3(user_ns, true);
	struct mount *mnt, *p;
	struct file *file;

	if (FUNC1(ns))
		return FUNC0(ns);

	FUNC12();
	mnt = FUNC2(path, recursive);
	if (FUNC1(mnt)) {
		FUNC13();
		FUNC7(ns);
		return FUNC0(mnt);
	}

	FUNC9();
	for (p = mnt; p; p = FUNC14(p, mnt)) {
		p->mnt_ns = ns;
		ns->mounts++;
	}
	ns->root = mnt;
	FUNC8(&ns->list, &mnt->mnt_list);
	FUNC10(&mnt->mnt);
	FUNC15();
	FUNC13();

	FUNC11(path->mnt);
	path->mnt = &mnt->mnt;
	file = FUNC5(path, O_PATH, FUNC4());
	if (FUNC1(file))
		FUNC6(path->mnt);
	else
		file->f_mode |= FMODE_NEED_UNMOUNT;
	return file;
}