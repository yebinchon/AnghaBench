#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_lsn_t ;
struct TYPE_19__ {int /*<<< orphan*/  t_nsec; int /*<<< orphan*/  t_sec; } ;
struct xfs_icdinode {int di_version; int /*<<< orphan*/  di_flushiter; int /*<<< orphan*/  di_cowextsize; int /*<<< orphan*/  di_flags2; TYPE_8__ di_crtime; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_dmstate; int /*<<< orphan*/  di_dmevmask; int /*<<< orphan*/  di_aformat; int /*<<< orphan*/  di_forkoff; int /*<<< orphan*/  di_anextents; int /*<<< orphan*/  di_nextents; int /*<<< orphan*/  di_extsize; int /*<<< orphan*/  di_nblocks; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_projid_hi; int /*<<< orphan*/  di_projid_lo; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_format; } ;
struct xfs_inode {TYPE_10__* i_mount; int /*<<< orphan*/  i_ino; struct xfs_icdinode i_d; } ;
struct TYPE_18__ {void* t_nsec; void* t_sec; } ;
struct TYPE_16__ {void* t_nsec; void* t_sec; } ;
struct TYPE_14__ {void* t_nsec; void* t_sec; } ;
struct TYPE_12__ {void* t_nsec; void* t_sec; } ;
struct xfs_dinode {int di_version; void* di_flushiter; int /*<<< orphan*/  di_uuid; int /*<<< orphan*/  di_pad2; void* di_lsn; void* di_ino; void* di_cowextsize; void* di_flags2; TYPE_7__ di_crtime; void* di_changecount; void* di_flags; void* di_dmstate; void* di_dmevmask; int /*<<< orphan*/  di_aformat; int /*<<< orphan*/  di_forkoff; void* di_anextents; void* di_nextents; void* di_extsize; void* di_nblocks; void* di_size; void* di_mode; void* di_gen; void* di_nlink; TYPE_5__ di_ctime; TYPE_3__ di_mtime; TYPE_1__ di_atime; int /*<<< orphan*/  di_pad; void* di_projid_hi; void* di_projid_lo; void* di_gid; void* di_uid; int /*<<< orphan*/  di_format; scalar_t__ di_onlink; void* di_magic; } ;
struct TYPE_17__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_15__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_13__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_nlink; TYPE_6__ i_ctime; TYPE_4__ i_mtime; TYPE_2__ i_atime; } ;
struct TYPE_20__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct TYPE_11__ {TYPE_9__ m_sb; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_DINODE_MAGIC ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(
	struct xfs_inode	*ip,
	struct xfs_dinode	*to,
	xfs_lsn_t		lsn)
{
	struct xfs_icdinode	*from = &ip->i_d;
	struct inode		*inode = FUNC0(ip);

	to->di_magic = FUNC1(XFS_DINODE_MAGIC);
	to->di_onlink = 0;

	to->di_version = from->di_version;
	to->di_format = from->di_format;
	to->di_uid = FUNC2(from->di_uid);
	to->di_gid = FUNC2(from->di_gid);
	to->di_projid_lo = FUNC1(from->di_projid_lo);
	to->di_projid_hi = FUNC1(from->di_projid_hi);

	FUNC5(to->di_pad, 0, sizeof(to->di_pad));
	to->di_atime.t_sec = FUNC2(inode->i_atime.tv_sec);
	to->di_atime.t_nsec = FUNC2(inode->i_atime.tv_nsec);
	to->di_mtime.t_sec = FUNC2(inode->i_mtime.tv_sec);
	to->di_mtime.t_nsec = FUNC2(inode->i_mtime.tv_nsec);
	to->di_ctime.t_sec = FUNC2(inode->i_ctime.tv_sec);
	to->di_ctime.t_nsec = FUNC2(inode->i_ctime.tv_nsec);
	to->di_nlink = FUNC2(inode->i_nlink);
	to->di_gen = FUNC2(inode->i_generation);
	to->di_mode = FUNC1(inode->i_mode);

	to->di_size = FUNC3(from->di_size);
	to->di_nblocks = FUNC3(from->di_nblocks);
	to->di_extsize = FUNC2(from->di_extsize);
	to->di_nextents = FUNC2(from->di_nextents);
	to->di_anextents = FUNC1(from->di_anextents);
	to->di_forkoff = from->di_forkoff;
	to->di_aformat = from->di_aformat;
	to->di_dmevmask = FUNC2(from->di_dmevmask);
	to->di_dmstate = FUNC1(from->di_dmstate);
	to->di_flags = FUNC1(from->di_flags);

	if (from->di_version == 3) {
		to->di_changecount = FUNC3(FUNC4(inode));
		to->di_crtime.t_sec = FUNC2(from->di_crtime.t_sec);
		to->di_crtime.t_nsec = FUNC2(from->di_crtime.t_nsec);
		to->di_flags2 = FUNC3(from->di_flags2);
		to->di_cowextsize = FUNC2(from->di_cowextsize);
		to->di_ino = FUNC3(ip->i_ino);
		to->di_lsn = FUNC3(lsn);
		FUNC5(to->di_pad2, 0, sizeof(to->di_pad2));
		FUNC6(&to->di_uuid, &ip->i_mount->m_sb.sb_meta_uuid);
		to->di_flushiter = 0;
	} else {
		to->di_flushiter = FUNC1(from->di_flushiter);
	}
}