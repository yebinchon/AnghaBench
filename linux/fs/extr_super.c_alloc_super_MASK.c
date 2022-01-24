#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct user_namespace {int dummy; } ;
struct super_operations {int dummy; } ;
struct TYPE_7__ {int batch; int flags; int /*<<< orphan*/  count_objects; int /*<<< orphan*/  scan_objects; int /*<<< orphan*/  seeks; } ;
struct TYPE_6__ {int /*<<< orphan*/  dqio_sem; } ;
struct TYPE_5__ {int /*<<< orphan*/  wait_unfrozen; int /*<<< orphan*/ * rw_sem; } ;
struct super_block {int s_flags; int s_count; int s_time_gran; TYPE_3__ s_shrink; int /*<<< orphan*/  s_inode_lru; int /*<<< orphan*/  s_dentry_lru; int /*<<< orphan*/  cleancache_poolid; int /*<<< orphan*/  s_time_max; int /*<<< orphan*/  s_time_min; struct super_operations const* s_op; int /*<<< orphan*/  s_maxbytes; TYPE_2__ s_dquot; int /*<<< orphan*/  s_vfs_rename_mutex; int /*<<< orphan*/  s_active; int /*<<< orphan*/  s_inode_wblist_lock; int /*<<< orphan*/  s_inodes_wb; int /*<<< orphan*/  s_inode_list_lock; int /*<<< orphan*/  s_inodes; int /*<<< orphan*/  s_sync_lock; int /*<<< orphan*/  s_roots; int /*<<< orphan*/  s_instances; int /*<<< orphan*/  s_iflags; int /*<<< orphan*/ * s_user_ns; int /*<<< orphan*/ * s_bdi; TYPE_1__ s_writers; int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_mounts; } ;
struct file_system_type {int /*<<< orphan*/  s_vfs_rename_key; int /*<<< orphan*/ * s_writers_key; int /*<<< orphan*/  s_umount_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEANCACHE_NO_POOL ; 
 int /*<<< orphan*/  DEFAULT_SEEKS ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_NON_LFS ; 
 int SB_FREEZE_LEVELS ; 
 int /*<<< orphan*/  SB_I_NODEV ; 
 int SHRINKER_MEMCG_AWARE ; 
 int SHRINKER_NUMA_AWARE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  TIME64_MAX ; 
 int /*<<< orphan*/  TIME64_MIN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noop_backing_dev_info ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/ * sb_writers_name ; 
 scalar_t__ FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  super_cache_count ; 
 int /*<<< orphan*/  super_cache_scan ; 

__attribute__((used)) static struct super_block *FUNC17(struct file_system_type *type, int flags,
				       struct user_namespace *user_ns)
{
	struct super_block *s = FUNC10(sizeof(struct super_block),  GFP_USER);
	static const struct super_operations default_op;
	int i;

	if (!s)
		return NULL;

	FUNC2(&s->s_mounts);
	s->s_user_ns = FUNC7(user_ns);
	FUNC8(&s->s_umount);
	FUNC12(&s->s_umount, &type->s_umount_key);
	/*
	 * sget() can have s_umount recursion.
	 *
	 * When it cannot find a suitable sb, it allocates a new
	 * one (this one), and tries again to find a suitable old
	 * one.
	 *
	 * In case that succeeds, it will acquire the s_umount
	 * lock of the old one. Since these are clearly distrinct
	 * locks, and this object isn't exposed yet, there's no
	 * risk of deadlocks.
	 *
	 * Annotate this by putting this lock in a different
	 * subclass.
	 */
	FUNC6(&s->s_umount, SINGLE_DEPTH_NESTING);

	if (FUNC15(s))
		goto fail;

	for (i = 0; i < SB_FREEZE_LEVELS; i++) {
		if (FUNC3(&s->s_writers.rw_sem[i],
					sb_writers_name[i],
					&type->s_writers_key[i]))
			goto fail;
	}
	FUNC9(&s->s_writers.wait_unfrozen);
	s->s_bdi = &noop_backing_dev_info;
	s->s_flags = flags;
	if (s->s_user_ns != &init_user_ns)
		s->s_iflags |= SB_I_NODEV;
	FUNC1(&s->s_instances);
	FUNC0(&s->s_roots);
	FUNC13(&s->s_sync_lock);
	FUNC2(&s->s_inodes);
	FUNC16(&s->s_inode_list_lock);
	FUNC2(&s->s_inodes_wb);
	FUNC16(&s->s_inode_wblist_lock);

	s->s_count = 1;
	FUNC4(&s->s_active, 1);
	FUNC13(&s->s_vfs_rename_mutex);
	FUNC12(&s->s_vfs_rename_mutex, &type->s_vfs_rename_key);
	FUNC8(&s->s_dquot.dqio_sem);
	s->s_maxbytes = MAX_NON_LFS;
	s->s_op = &default_op;
	s->s_time_gran = 1000000000;
	s->s_time_min = TIME64_MIN;
	s->s_time_max = TIME64_MAX;
	s->cleancache_poolid = CLEANCACHE_NO_POOL;

	s->s_shrink.seeks = DEFAULT_SEEKS;
	s->s_shrink.scan_objects = super_cache_scan;
	s->s_shrink.count_objects = super_cache_count;
	s->s_shrink.batch = 1024;
	s->s_shrink.flags = SHRINKER_NUMA_AWARE | SHRINKER_MEMCG_AWARE;
	if (FUNC14(&s->s_shrink))
		goto fail;
	if (FUNC11(&s->s_dentry_lru, &s->s_shrink))
		goto fail;
	if (FUNC11(&s->s_inode_lru, &s->s_shrink))
		goto fail;
	return s;

fail:
	FUNC5(s);
	return NULL;
}