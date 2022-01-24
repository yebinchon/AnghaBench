#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct kstat {int mode; int blksize; int /*<<< orphan*/  blocks; int /*<<< orphan*/  size; TYPE_5__ ctime; TYPE_4__ mtime; TYPE_3__ atime; int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nlink; int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; TYPE_6__* i_sb; int /*<<< orphan*/  i_rdev; TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct fuse_conn {int /*<<< orphan*/  user_ns; scalar_t__ writeback_cache; } ;
struct fuse_attr {int mode; scalar_t__ blksize; int /*<<< orphan*/  blocks; int /*<<< orphan*/  size; int /*<<< orphan*/  ctimensec; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atimensec; int /*<<< orphan*/  atime; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nlink; int /*<<< orphan*/  ino; } ;
struct TYPE_12__ {unsigned int s_blocksize_bits; int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct fuse_attr *attr,
			  struct kstat *stat)
{
	unsigned int blkbits;
	struct fuse_conn *fc = FUNC1(inode);

	/* see the comment in fuse_change_attributes() */
	if (fc->writeback_cache && FUNC0(inode->i_mode)) {
		attr->size = FUNC2(inode);
		attr->mtime = inode->i_mtime.tv_sec;
		attr->mtimensec = inode->i_mtime.tv_nsec;
		attr->ctime = inode->i_ctime.tv_sec;
		attr->ctimensec = inode->i_ctime.tv_nsec;
	}

	stat->dev = inode->i_sb->s_dev;
	stat->ino = attr->ino;
	stat->mode = (inode->i_mode & S_IFMT) | (attr->mode & 07777);
	stat->nlink = attr->nlink;
	stat->uid = FUNC5(fc->user_ns, attr->uid);
	stat->gid = FUNC4(fc->user_ns, attr->gid);
	stat->rdev = inode->i_rdev;
	stat->atime.tv_sec = attr->atime;
	stat->atime.tv_nsec = attr->atimensec;
	stat->mtime.tv_sec = attr->mtime;
	stat->mtime.tv_nsec = attr->mtimensec;
	stat->ctime.tv_sec = attr->ctime;
	stat->ctime.tv_nsec = attr->ctimensec;
	stat->size = attr->size;
	stat->blocks = attr->blocks;

	if (attr->blksize != 0)
		blkbits = FUNC3(attr->blksize);
	else
		blkbits = inode->i_sb->s_blocksize_bits;

	stat->blksize = 1 << blkbits;
}