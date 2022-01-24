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
struct TYPE_5__ {void** val; } ;
struct kstatfs {int f_bfree; int f_bavail; int /*<<< orphan*/  f_namelen; TYPE_2__ f_fsid; void* f_ffree; void* f_files; int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct jfs_sb_info {int /*<<< orphan*/  uuid; TYPE_1__* bmap; int /*<<< orphan*/  bsize; int /*<<< orphan*/  ipimap; } ;
struct inomap {int im_l2nbperiext; int /*<<< orphan*/  im_numfree; int /*<<< orphan*/  im_numinos; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  void* s64 ;
struct TYPE_6__ {struct inomap* i_imap; } ;
struct TYPE_4__ {int db_nfree; int /*<<< orphan*/  db_mapsize; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JFS_NAME_MAX ; 
 struct jfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JFS_SUPER_MAGIC ; 
 int L2INOSPEREXT ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (void*,void*) ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, struct kstatfs *buf)
{
	struct jfs_sb_info *sbi = FUNC1(dentry->d_sb);
	s64 maxinodes;
	struct inomap *imap = FUNC0(sbi->ipimap)->i_imap;

	FUNC4("In jfs_statfs");
	buf->f_type = JFS_SUPER_MAGIC;
	buf->f_bsize = sbi->bsize;
	buf->f_blocks = sbi->bmap->db_mapsize;
	buf->f_bfree = sbi->bmap->db_nfree;
	buf->f_bavail = sbi->bmap->db_nfree;
	/*
	 * If we really return the number of allocated & free inodes, some
	 * applications will fail because they won't see enough free inodes.
	 * We'll try to calculate some guess as to how many inodes we can
	 * really allocate
	 *
	 * buf->f_files = atomic_read(&imap->im_numinos);
	 * buf->f_ffree = atomic_read(&imap->im_numfree);
	 */
	maxinodes = FUNC5((s64) FUNC2(&imap->im_numinos) +
			((sbi->bmap->db_nfree >> imap->im_l2nbperiext)
			 << L2INOSPEREXT), (s64) 0xffffffffLL);
	buf->f_files = maxinodes;
	buf->f_ffree = maxinodes - (FUNC2(&imap->im_numinos) -
				    FUNC2(&imap->im_numfree));
	buf->f_fsid.val[0] = FUNC3(0, (char *)&sbi->uuid,
				      sizeof(sbi->uuid)/2);
	buf->f_fsid.val[1] = FUNC3(0,
				      (char *)&sbi->uuid + sizeof(sbi->uuid)/2,
				      sizeof(sbi->uuid)/2);

	buf->f_namelen = JFS_NAME_MAX;
	return 0;
}