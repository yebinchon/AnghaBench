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
union jffs2_device_node {int nsize; int type; void* mctime; void* name_crc; void* node_crc; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; int /*<<< orphan*/  compr; void* csize; void* dsize; } ;
typedef  int umode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_inode {int nsize; int type; void* mctime; void* name_crc; void* node_crc; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; int /*<<< orphan*/  compr; void* csize; void* dsize; } ;
struct jffs2_raw_dirent {int nsize; int type; void* mctime; void* name_crc; void* node_crc; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; int /*<<< orphan*/  compr; void* csize; void* dsize; } ;
struct jffs2_inode_info {int highest_version; int /*<<< orphan*/  sem; int /*<<< orphan*/  dents; struct jffs2_full_dnode* metadata; } ;
struct jffs2_full_dnode {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct jffs2_full_dirent {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int len; union jffs2_device_node* name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_NORMAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JFFS2_COMPR_NONE ; 
 struct jffs2_inode_info* FUNC2 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  JFFS2_MAGIC_BITMASK ; 
 int /*<<< orphan*/  JFFS2_NODETYPE_DIRENT ; 
 int FUNC3 () ; 
 struct jffs2_sb_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  JFFS2_SUMMARY_INODE_SIZE ; 
 int FUNC6 (struct jffs2_full_dnode*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,union jffs2_device_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct jffs2_full_dnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct jffs2_full_dnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (struct jffs2_sb_info*,struct jffs2_full_dnode*,int /*<<< orphan*/ *) ; 
 union jffs2_device_node* FUNC17 () ; 
 union jffs2_device_node* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct jffs2_sb_info*) ; 
 int FUNC20 (union jffs2_device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jffs2_file_inode_operations ; 
 int /*<<< orphan*/  FUNC21 (union jffs2_device_node*) ; 
 int /*<<< orphan*/  FUNC22 (union jffs2_device_node*) ; 
 int FUNC23 (struct jffs2_full_dnode*) ; 
 int FUNC24 (struct jffs2_full_dnode*,struct jffs2_full_dnode*,TYPE_1__*) ; 
 struct jffs2_full_dnode* FUNC25 (struct jffs2_full_dnode*,int,union jffs2_device_node*) ; 
 int FUNC26 (struct jffs2_sb_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jffs2_full_dnode* FUNC27 (struct jffs2_sb_info*,struct jffs2_inode_info*,union jffs2_device_node*,union jffs2_device_node*,int,int /*<<< orphan*/ ) ; 
 struct jffs2_full_dnode* FUNC28 (struct jffs2_sb_info*,struct jffs2_inode_info*,union jffs2_device_node*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31 (struct inode *dir_i, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	struct jffs2_inode_info *f, *dir_f;
	struct jffs2_sb_info *c;
	struct inode *inode;
	struct jffs2_raw_inode *ri;
	struct jffs2_raw_dirent *rd;
	struct jffs2_full_dnode *fn;
	struct jffs2_full_dirent *fd;
	int namelen;
	union jffs2_device_node dev;
	int devlen = 0;
	uint32_t alloclen;
	int ret;

	ri = FUNC18();
	if (!ri)
		return -ENOMEM;

	c = FUNC4(dir_i->i_sb);

	if (FUNC7(mode) || FUNC8(mode))
		devlen = FUNC20(&dev, rdev);

	/* Try to reserve enough space for both node and dirent.
	 * Just the node will do for now, though
	 */
	namelen = dentry->d_name.len;
	ret = FUNC26(c, sizeof(*ri) + devlen, &alloclen,
				  ALLOC_NORMAL, JFFS2_SUMMARY_INODE_SIZE);

	if (ret) {
		FUNC22(ri);
		return ret;
	}

	inode = FUNC25(dir_i, mode, ri);

	if (FUNC0(inode)) {
		FUNC22(ri);
		FUNC19(c);
		return FUNC6(inode);
	}
	inode->i_op = &jffs2_file_inode_operations;
	FUNC14(inode, inode->i_mode, rdev);

	f = FUNC2(inode);

	ri->dsize = ri->csize = FUNC10(devlen);
	ri->totlen = FUNC10(sizeof(*ri) + devlen);
	ri->hdr_crc = FUNC10(FUNC11(0, ri, sizeof(struct jffs2_unknown_node)-4));

	ri->compr = JFFS2_COMPR_NONE;
	ri->data_crc = FUNC10(FUNC11(0, &dev, devlen));
	ri->node_crc = FUNC10(FUNC11(0, ri, sizeof(*ri)-8));

	fn = FUNC28(c, f, ri, (char *)&dev, devlen, ALLOC_NORMAL);

	FUNC22(ri);

	if (FUNC0(fn)) {
		/* Eeek. Wave bye bye */
		FUNC30(&f->sem);
		FUNC19(c);
		ret = FUNC6(fn);
		goto fail;
	}
	/* No data here. Only a metadata node, which will be
	   obsoleted by the first data write
	*/
	f->metadata = fn;
	FUNC30(&f->sem);

	FUNC19(c);

	ret = FUNC24(inode, dir_i, &dentry->d_name);
	if (ret)
		goto fail;

	ret = FUNC23(inode);
	if (ret)
		goto fail;

	ret = FUNC26(c, sizeof(*rd)+namelen, &alloclen,
				  ALLOC_NORMAL, FUNC5(namelen));
	if (ret)
		goto fail;

	rd = FUNC17();
	if (!rd) {
		/* Argh. Now we treat it like a normal delete */
		FUNC19(c);
		ret = -ENOMEM;
		goto fail;
	}

	dir_f = FUNC2(dir_i);
	FUNC29(&dir_f->sem);

	rd->magic = FUNC9(JFFS2_MAGIC_BITMASK);
	rd->nodetype = FUNC9(JFFS2_NODETYPE_DIRENT);
	rd->totlen = FUNC10(sizeof(*rd) + namelen);
	rd->hdr_crc = FUNC10(FUNC11(0, rd, sizeof(struct jffs2_unknown_node)-4));

	rd->pino = FUNC10(dir_i->i_ino);
	rd->version = FUNC10(++dir_f->highest_version);
	rd->ino = FUNC10(inode->i_ino);
	rd->mctime = FUNC10(FUNC3());
	rd->nsize = namelen;

	/* XXX: This is ugly. */
	rd->type = (mode & S_IFMT) >> 12;

	rd->node_crc = FUNC10(FUNC11(0, rd, sizeof(*rd)-8));
	rd->name_crc = FUNC10(FUNC11(0, dentry->d_name.name, namelen));

	fd = FUNC27(c, dir_f, rd, dentry->d_name.name, namelen, ALLOC_NORMAL);

	if (FUNC0(fd)) {
		/* dirent failed to write. Delete the inode normally
		   as if it were the final unlink() */
		FUNC19(c);
		FUNC21(rd);
		FUNC30(&dir_f->sem);
		ret = FUNC6(fd);
		goto fail;
	}

	dir_i->i_mtime = dir_i->i_ctime = FUNC1(FUNC15(rd->mctime));

	FUNC21(rd);

	/* Link the fd into the inode's list, obsoleting an old
	   one if necessary. */
	FUNC16(c, fd, &dir_f->dents);

	FUNC30(&dir_f->sem);
	FUNC19(c);

	FUNC12(dentry, inode);
	return 0;

 fail:
	FUNC13(inode);
	return ret;
}