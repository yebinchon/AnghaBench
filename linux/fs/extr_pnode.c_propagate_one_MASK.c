#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mnt_root; } ;
struct mount {int /*<<< orphan*/  mnt_ns; int /*<<< orphan*/  mnt_hash; struct mount* mnt_master; TYPE_1__ mnt; struct mount* mnt_parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  m_dentry; } ;

/* Variables and functions */
 int CL_MAKE_SHARED ; 
 int CL_SLAVE ; 
 scalar_t__ FUNC0 (struct mount*) ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 scalar_t__ FUNC3 (struct mount*) ; 
 int FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 struct mount* FUNC6 (struct mount*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mount*) ; 
 struct mount* dest_master ; 
 struct mount* first_source ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mount* last_dest ; 
 struct mount* last_source ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC10 (struct mount*,TYPE_2__*,struct mount*) ; 
 int /*<<< orphan*/  mount_lock ; 
 TYPE_2__* mp ; 
 scalar_t__ FUNC11 (struct mount*,struct mount*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct mount *m)
{
	struct mount *child;
	int type;
	/* skip ones added by this propagate_mnt() */
	if (FUNC2(m))
		return 0;
	/* skip if mountpoint isn't covered by it */
	if (!FUNC9(mp->m_dentry, m->mnt.mnt_root))
		return 0;
	if (FUNC11(m, last_dest)) {
		type = CL_MAKE_SHARED;
	} else {
		struct mount *n, *p;
		bool done;
		for (n = m; ; n = p) {
			p = n->mnt_master;
			if (p == dest_master || FUNC1(p))
				break;
		}
		do {
			struct mount *parent = last_source->mnt_parent;
			if (last_source == first_source)
				break;
			done = parent->mnt_master == p;
			if (done && FUNC11(n, parent))
				break;
			last_source = last_source->mnt_master;
		} while (!done);

		type = CL_SLAVE;
		/* beginning of peer group among the slaves? */
		if (FUNC3(m))
			type |= CL_MAKE_SHARED;
	}
		
	child = FUNC6(last_source, last_source->mnt.mnt_root, type);
	if (FUNC0(child))
		return FUNC4(child);
	FUNC10(m, mp, child);
	last_dest = m;
	last_source = child;
	if (m->mnt_master != dest_master) {
		FUNC12(&mount_lock);
		FUNC5(m->mnt_master);
		FUNC13(&mount_lock);
	}
	FUNC8(&child->mnt_hash, list);
	return FUNC7(m->mnt_ns, child);
}