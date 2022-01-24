#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_inode {int nsize; void* mctime; void* name_crc; void* node_crc; int /*<<< orphan*/  type; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; } ;
struct jffs2_raw_dirent {int nsize; void* mctime; void* name_crc; void* node_crc; int /*<<< orphan*/  type; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; } ;
struct jffs2_inode_info {int highest_version; int /*<<< orphan*/  sem; int /*<<< orphan*/  dents; struct jffs2_full_dnode* metadata; TYPE_1__* inocache; } ;
struct jffs2_full_dnode {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct jffs2_full_dirent {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int len; struct jffs2_raw_inode* name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {int pino_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_NORMAL ; 
 int /*<<< orphan*/  DT_DIR ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC2 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  JFFS2_MAGIC_BITMASK ; 
 int /*<<< orphan*/  JFFS2_NODETYPE_DIRENT ; 
 int FUNC3 () ; 
 struct jffs2_sb_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  JFFS2_SUMMARY_INODE_SIZE ; 
 int FUNC6 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct jffs2_raw_inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (struct jffs2_sb_info*,struct jffs2_full_dnode*,int /*<<< orphan*/ *) ; 
 struct jffs2_raw_inode* FUNC15 () ; 
 struct jffs2_raw_inode* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  jffs2_dir_inode_operations ; 
 int /*<<< orphan*/  jffs2_dir_operations ; 
 int /*<<< orphan*/  FUNC18 (struct jffs2_raw_inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct jffs2_raw_inode*) ; 
 int FUNC20 (struct jffs2_full_dnode*) ; 
 int FUNC21 (struct jffs2_full_dnode*,struct jffs2_full_dnode*,TYPE_2__*) ; 
 struct jffs2_full_dnode* FUNC22 (struct jffs2_full_dnode*,int /*<<< orphan*/ ,struct jffs2_raw_inode*) ; 
 int FUNC23 (struct jffs2_sb_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jffs2_full_dnode* FUNC24 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*,struct jffs2_raw_inode*,int,int /*<<< orphan*/ ) ; 
 struct jffs2_full_dnode* FUNC25 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct jffs2_full_dnode*,int) ; 

__attribute__((used)) static int FUNC29 (struct inode *dir_i, struct dentry *dentry, umode_t mode)
{
	struct jffs2_inode_info *f, *dir_f;
	struct jffs2_sb_info *c;
	struct inode *inode;
	struct jffs2_raw_inode *ri;
	struct jffs2_raw_dirent *rd;
	struct jffs2_full_dnode *fn;
	struct jffs2_full_dirent *fd;
	int namelen;
	uint32_t alloclen;
	int ret;

	mode |= S_IFDIR;

	ri = FUNC16();
	if (!ri)
		return -ENOMEM;

	c = FUNC4(dir_i->i_sb);

	/* Try to reserve enough space for both node and dirent.
	 * Just the node will do for now, though
	 */
	namelen = dentry->d_name.len;
	ret = FUNC23(c, sizeof(*ri), &alloclen, ALLOC_NORMAL,
				  JFFS2_SUMMARY_INODE_SIZE);

	if (ret) {
		FUNC19(ri);
		return ret;
	}

	inode = FUNC22(dir_i, mode, ri);

	if (FUNC0(inode)) {
		FUNC19(ri);
		FUNC17(c);
		return FUNC6(inode);
	}

	inode->i_op = &jffs2_dir_inode_operations;
	inode->i_fop = &jffs2_dir_operations;

	f = FUNC2(inode);

	/* Directories get nlink 2 at start */
	FUNC28(inode, 2);
	/* but ic->pino_nlink is the parent ino# */
	f->inocache->pino_nlink = dir_i->i_ino;

	ri->data_crc = FUNC8(0);
	ri->node_crc = FUNC8(FUNC9(0, ri, sizeof(*ri)-8));

	fn = FUNC25(c, f, ri, NULL, 0, ALLOC_NORMAL);

	FUNC19(ri);

	if (FUNC0(fn)) {
		/* Eeek. Wave bye bye */
		FUNC27(&f->sem);
		FUNC17(c);
		ret = FUNC6(fn);
		goto fail;
	}
	/* No data here. Only a metadata node, which will be
	   obsoleted by the first data write
	*/
	f->metadata = fn;
	FUNC27(&f->sem);

	FUNC17(c);

	ret = FUNC21(inode, dir_i, &dentry->d_name);
	if (ret)
		goto fail;

	ret = FUNC20(inode);
	if (ret)
		goto fail;

	ret = FUNC23(c, sizeof(*rd)+namelen, &alloclen,
				  ALLOC_NORMAL, FUNC5(namelen));
	if (ret)
		goto fail;

	rd = FUNC15();
	if (!rd) {
		/* Argh. Now we treat it like a normal delete */
		FUNC17(c);
		ret = -ENOMEM;
		goto fail;
	}

	dir_f = FUNC2(dir_i);
	FUNC26(&dir_f->sem);

	rd->magic = FUNC7(JFFS2_MAGIC_BITMASK);
	rd->nodetype = FUNC7(JFFS2_NODETYPE_DIRENT);
	rd->totlen = FUNC8(sizeof(*rd) + namelen);
	rd->hdr_crc = FUNC8(FUNC9(0, rd, sizeof(struct jffs2_unknown_node)-4));

	rd->pino = FUNC8(dir_i->i_ino);
	rd->version = FUNC8(++dir_f->highest_version);
	rd->ino = FUNC8(inode->i_ino);
	rd->mctime = FUNC8(FUNC3());
	rd->nsize = namelen;
	rd->type = DT_DIR;
	rd->node_crc = FUNC8(FUNC9(0, rd, sizeof(*rd)-8));
	rd->name_crc = FUNC8(FUNC9(0, dentry->d_name.name, namelen));

	fd = FUNC24(c, dir_f, rd, dentry->d_name.name, namelen, ALLOC_NORMAL);

	if (FUNC0(fd)) {
		/* dirent failed to write. Delete the inode normally
		   as if it were the final unlink() */
		FUNC17(c);
		FUNC18(rd);
		FUNC27(&dir_f->sem);
		ret = FUNC6(fd);
		goto fail;
	}

	dir_i->i_mtime = dir_i->i_ctime = FUNC1(FUNC13(rd->mctime));
	FUNC12(dir_i);

	FUNC18(rd);

	/* Link the fd into the inode's list, obsoleting an old
	   one if necessary. */
	FUNC14(c, fd, &dir_f->dents);

	FUNC27(&dir_f->sem);
	FUNC17(c);

	FUNC10(dentry, inode);
	return 0;

 fail:
	FUNC11(inode);
	return ret;
}