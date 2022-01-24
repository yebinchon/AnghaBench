#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct romfs_inode_info {unsigned long i_metasize; unsigned long i_dataoffset; } ;
struct romfs_inode {int /*<<< orphan*/  spec; int /*<<< orphan*/  size; int /*<<< orphan*/  next; } ;
struct TYPE_8__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int i_state; unsigned long i_size; int /*<<< orphan*/  i_mode; TYPE_4__ i_data; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; } ;
typedef  int /*<<< orphan*/  ri ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
#define  ROMFH_DIR 130 
 unsigned int ROMFH_EXEC ; 
 unsigned int ROMFH_HRD ; 
 unsigned long ROMFH_MASK ; 
 unsigned long ROMFH_PAD ; 
#define  ROMFH_REG 129 
 unsigned long ROMFH_SIZE ; 
#define  ROMFH_SYM 128 
 unsigned int ROMFH_TYPE ; 
 struct romfs_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  ROMFS_MAXFN ; 
 int /*<<< orphan*/  S_IRWXUGO ; 
 int /*<<< orphan*/  S_IXUGO ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long) ; 
 int /*<<< orphan*/  romfs_aops ; 
 int FUNC9 (struct super_block*,unsigned long,struct romfs_inode*,int) ; 
 unsigned long FUNC10 (struct super_block*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  romfs_dir_inode_operations ; 
 int /*<<< orphan*/  romfs_dir_operations ; 
 int /*<<< orphan*/ * romfs_modemap ; 
 int /*<<< orphan*/  romfs_ro_fops ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC13(struct super_block *sb, unsigned long pos)
{
	struct romfs_inode_info *inode;
	struct romfs_inode ri;
	struct inode *i;
	unsigned long nlen;
	unsigned nextfh;
	int ret;
	umode_t mode;

	/* we might have to traverse a chain of "hard link" file entries to get
	 * to the actual file */
	for (;;) {
		ret = FUNC9(sb, pos, &ri, sizeof(ri));
		if (ret < 0)
			goto error;

		/* XXX: do romfs_checksum here too (with name) */

		nextfh = FUNC4(ri.next);
		if ((nextfh & ROMFH_TYPE) != ROMFH_HRD)
			break;

		pos = FUNC4(ri.spec) & ROMFH_MASK;
	}

	/* determine the length of the filename */
	nlen = FUNC10(sb, pos + ROMFH_SIZE, ROMFS_MAXFN);
	if (FUNC1(nlen))
		goto eio;

	/* get an inode for this image position */
	i = FUNC5(sb, pos);
	if (!i)
		return FUNC0(-ENOMEM);

	if (!(i->i_state & I_NEW))
		return i;

	/* precalculate the data offset */
	inode = FUNC3(i);
	inode->i_metasize = (ROMFH_SIZE + nlen + 1 + ROMFH_PAD) & ROMFH_MASK;
	inode->i_dataoffset = pos + inode->i_metasize;

	FUNC11(i, 1);		/* Hard to decide.. */
	i->i_size = FUNC4(ri.size);
	i->i_mtime.tv_sec = i->i_atime.tv_sec = i->i_ctime.tv_sec = 0;
	i->i_mtime.tv_nsec = i->i_atime.tv_nsec = i->i_ctime.tv_nsec = 0;

	/* set up mode and ops */
	mode = romfs_modemap[nextfh & ROMFH_TYPE];

	switch (nextfh & ROMFH_TYPE) {
	case ROMFH_DIR:
		i->i_size = FUNC3(i)->i_metasize;
		i->i_op = &romfs_dir_inode_operations;
		i->i_fop = &romfs_dir_operations;
		if (nextfh & ROMFH_EXEC)
			mode |= S_IXUGO;
		break;
	case ROMFH_REG:
		i->i_fop = &romfs_ro_fops;
		i->i_data.a_ops = &romfs_aops;
		if (nextfh & ROMFH_EXEC)
			mode |= S_IXUGO;
		break;
	case ROMFH_SYM:
		i->i_op = &page_symlink_inode_operations;
		FUNC7(i);
		i->i_data.a_ops = &romfs_aops;
		mode |= S_IRWXUGO;
		break;
	default:
		/* depending on MBZ for sock/fifos */
		nextfh = FUNC4(ri.spec);
		FUNC6(i, mode, FUNC2(nextfh >> 16,
						  nextfh & 0xffff));
		break;
	}

	i->i_mode = mode;

	FUNC12(i);
	return i;

eio:
	ret = -EIO;
error:
	FUNC8("read error for inode 0x%lx\n", pos);
	return FUNC0(ret);
}