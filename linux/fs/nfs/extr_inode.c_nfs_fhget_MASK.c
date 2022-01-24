#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_inode {unsigned long attrtimeo_timestamp; int /*<<< orphan*/  access_cache; int /*<<< orphan*/  attrtimeo; int /*<<< orphan*/  cache_validity; int /*<<< orphan*/  attr_gencount; int /*<<< orphan*/  read_cache_jiffies; scalar_t__ read_io; scalar_t__ write_io; void** cookieverf; } ;
struct nfs_find_desc {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_fh {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  used; } ;
struct TYPE_9__ {scalar_t__ blocks; } ;
struct TYPE_11__ {TYPE_2__ nfs3; TYPE_1__ nfs2; } ;
struct nfs_fattr {int valid; TYPE_3__ du; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nlink; int /*<<< orphan*/  size; int /*<<< orphan*/  change_attr; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  gencount; int /*<<< orphan*/  time_start; int /*<<< orphan*/  rdev; int /*<<< orphan*/  mode; int /*<<< orphan*/  mounted_on_fileid; int /*<<< orphan*/  fileid; } ;
struct nfs4_label {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_state; unsigned long i_ino; int i_flags; int /*<<< orphan*/  i_count; TYPE_4__* i_sb; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; scalar_t__ i_size; void* i_ctime; void* i_mtime; void* i_atime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_7__ i_data; } ;
struct TYPE_16__ {TYPE_6__* nfs_client; } ;
struct TYPE_14__ {TYPE_5__* rpc_ops; } ;
struct TYPE_13__ {int /*<<< orphan*/ * dir_inode_ops; int /*<<< orphan*/ * file_ops; int /*<<< orphan*/ * file_inode_ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 int NFS_ATTR_FATTR_ATIME ; 
 int NFS_ATTR_FATTR_BLOCKS_USED ; 
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_FILEID ; 
 int NFS_ATTR_FATTR_GROUP ; 
 int NFS_ATTR_FATTR_MODE ; 
 int NFS_ATTR_FATTR_MOUNTPOINT ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_NLINK ; 
 int NFS_ATTR_FATTR_OWNER ; 
 int NFS_ATTR_FATTR_SIZE ; 
 int NFS_ATTR_FATTR_SPACE_USED ; 
 int NFS_ATTR_FATTR_TYPE ; 
 int NFS_ATTR_FATTR_V4_REFERRAL ; 
 int /*<<< orphan*/  NFS_CAP_ATIME ; 
 int /*<<< orphan*/  NFS_CAP_CTIME ; 
 int /*<<< orphan*/  NFS_CAP_MODE ; 
 int /*<<< orphan*/  NFS_CAP_MTIME ; 
 int /*<<< orphan*/  NFS_CAP_NLINK ; 
 int /*<<< orphan*/  NFS_CAP_OWNER ; 
 int /*<<< orphan*/  NFS_CAP_OWNER_GROUP ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct nfs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_ATIME ; 
 int /*<<< orphan*/  NFS_INO_INVALID_CHANGE ; 
 int /*<<< orphan*/  NFS_INO_INVALID_CTIME ; 
 int /*<<< orphan*/  NFS_INO_INVALID_MTIME ; 
 int /*<<< orphan*/  NFS_INO_INVALID_OTHER ; 
 int /*<<< orphan*/  NFS_INO_INVALID_SIZE ; 
 int /*<<< orphan*/  NFS_INO_REVAL_FORCED ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_8__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int S_AUTOMOUNT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 
 struct inode* FUNC12 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_find_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*,struct nfs_fattr*) ; 
 scalar_t__ FUNC21 (struct nfs_fattr*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_dir_aops ; 
 int /*<<< orphan*/  nfs_dir_operations ; 
 int /*<<< orphan*/  FUNC23 (struct nfs_fh*) ; 
 unsigned long FUNC24 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  nfs_file_aops ; 
 int /*<<< orphan*/  nfs_find_actor ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  nfs_init_locked ; 
 int /*<<< orphan*/  nfs_mountpoint_inode_operations ; 
 int /*<<< orphan*/  nfs_referral_inode_operations ; 
 int FUNC26 (struct inode*,struct nfs_fattr*) ; 
 scalar_t__ FUNC27 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,struct nfs_fattr*,struct nfs4_label*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*) ; 

struct inode *
FUNC34(struct super_block *sb, struct nfs_fh *fh, struct nfs_fattr *fattr, struct nfs4_label *label)
{
	struct nfs_find_desc desc = {
		.fh	= fh,
		.fattr	= fattr
	};
	struct inode *inode = FUNC0(-ENOENT);
	unsigned long hash;

	FUNC20(sb, fattr);

	if (FUNC21(fattr))
		fattr->fileid = fattr->mounted_on_fileid;
	else if ((fattr->valid & NFS_ATTR_FATTR_FILEID) == 0)
		goto out_no_inode;
	if ((fattr->valid & NFS_ATTR_FATTR_TYPE) == 0)
		goto out_no_inode;

	hash = FUNC24(fattr);

	inode = FUNC12(sb, hash, nfs_find_actor, nfs_init_locked, &desc);
	if (inode == NULL) {
		inode = FUNC0(-ENOMEM);
		goto out_no_inode;
	}

	if (inode->i_state & I_NEW) {
		struct nfs_inode *nfsi = FUNC2(inode);
		unsigned long now = jiffies;

		/* We set i_ino for the few things that still rely on it,
		 * such as stat(2) */
		inode->i_ino = hash;

		/* We can't support update_atime(), since the server will reset it */
		inode->i_flags |= S_NOATIME|S_NOCMTIME;
		inode->i_mode = fattr->mode;
		nfsi->cache_validity = 0;
		if ((fattr->valid & NFS_ATTR_FATTR_MODE) == 0
				&& FUNC27(inode, NFS_CAP_MODE))
			FUNC28(inode, NFS_INO_INVALID_OTHER);
		/* Why so? Because we want revalidate for devices/FIFOs, and
		 * that's precisely what we have in nfs_file_inode_operations.
		 */
		inode->i_op = FUNC4(sb)->nfs_client->rpc_ops->file_inode_ops;
		if (FUNC8(inode->i_mode)) {
			inode->i_fop = FUNC4(sb)->nfs_client->rpc_ops->file_ops;
			inode->i_data.a_ops = &nfs_file_aops;
		} else if (FUNC6(inode->i_mode)) {
			inode->i_op = FUNC4(sb)->nfs_client->rpc_ops->dir_inode_ops;
			inode->i_fop = &nfs_dir_operations;
			inode->i_data.a_ops = &nfs_dir_aops;
			/* Deal with crossing mountpoints */
			if (fattr->valid & NFS_ATTR_FATTR_MOUNTPOINT ||
					fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL) {
				if (fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL)
					inode->i_op = &nfs_referral_inode_operations;
				else
					inode->i_op = &nfs_mountpoint_inode_operations;
				inode->i_fop = NULL;
				inode->i_flags |= S_AUTOMOUNT;
			}
		} else if (FUNC7(inode->i_mode)) {
			inode->i_op = &nfs_symlink_inode_operations;
			FUNC14(inode);
		} else
			FUNC13(inode, inode->i_mode, fattr->rdev);

		FUNC19(&inode->i_atime, 0, sizeof(inode->i_atime));
		FUNC19(&inode->i_mtime, 0, sizeof(inode->i_mtime));
		FUNC19(&inode->i_ctime, 0, sizeof(inode->i_ctime));
		FUNC15(inode, 0);
		inode->i_size = 0;
		FUNC10(inode);
		inode->i_uid = FUNC18(&init_user_ns, -2);
		inode->i_gid = FUNC17(&init_user_ns, -2);
		inode->i_blocks = 0;
		FUNC19(nfsi->cookieverf, 0, sizeof(nfsi->cookieverf));
		nfsi->write_io = 0;
		nfsi->read_io = 0;

		nfsi->read_cache_jiffies = fattr->time_start;
		nfsi->attr_gencount = fattr->gencount;
		if (fattr->valid & NFS_ATTR_FATTR_ATIME)
			inode->i_atime = FUNC32(fattr->atime);
		else if (FUNC27(inode, NFS_CAP_ATIME))
			FUNC28(inode, NFS_INO_INVALID_ATIME);
		if (fattr->valid & NFS_ATTR_FATTR_MTIME)
			inode->i_mtime = FUNC32(fattr->mtime);
		else if (FUNC27(inode, NFS_CAP_MTIME))
			FUNC28(inode, NFS_INO_INVALID_MTIME);
		if (fattr->valid & NFS_ATTR_FATTR_CTIME)
			inode->i_ctime = FUNC32(fattr->ctime);
		else if (FUNC27(inode, NFS_CAP_CTIME))
			FUNC28(inode, NFS_INO_INVALID_CTIME);
		if (fattr->valid & NFS_ATTR_FATTR_CHANGE)
			FUNC15(inode, fattr->change_attr);
		else
			FUNC28(inode, NFS_INO_INVALID_CHANGE);
		if (fattr->valid & NFS_ATTR_FATTR_SIZE)
			inode->i_size = FUNC30(fattr->size);
		else
			FUNC28(inode, NFS_INO_INVALID_SIZE);
		if (fattr->valid & NFS_ATTR_FATTR_NLINK)
			FUNC31(inode, fattr->nlink);
		else if (FUNC27(inode, NFS_CAP_NLINK))
			FUNC28(inode, NFS_INO_INVALID_OTHER);
		if (fattr->valid & NFS_ATTR_FATTR_OWNER)
			inode->i_uid = fattr->uid;
		else if (FUNC27(inode, NFS_CAP_OWNER))
			FUNC28(inode, NFS_INO_INVALID_OTHER);
		if (fattr->valid & NFS_ATTR_FATTR_GROUP)
			inode->i_gid = fattr->gid;
		else if (FUNC27(inode, NFS_CAP_OWNER_GROUP))
			FUNC28(inode, NFS_INO_INVALID_OTHER);
		if (fattr->valid & NFS_ATTR_FATTR_BLOCKS_USED)
			inode->i_blocks = fattr->du.nfs2.blocks;
		if (fattr->valid & NFS_ATTR_FATTR_SPACE_USED) {
			/*
			 * report the blocks in 512byte units
			 */
			inode->i_blocks = FUNC22(fattr->du.nfs3.used);
		}

		if (nfsi->cache_validity != 0)
			nfsi->cache_validity |= NFS_INO_REVAL_FORCED;

		FUNC29(inode, fattr, label);

		nfsi->attrtimeo = FUNC3(inode);
		nfsi->attrtimeo_timestamp = now;
		nfsi->access_cache = RB_ROOT;

		FUNC25(inode);

		FUNC33(inode);
	} else {
		int err = FUNC26(inode, fattr);
		if (err < 0) {
			FUNC16(inode);
			inode = FUNC0(err);
			goto out_no_inode;
		}
	}
	FUNC11("NFS: nfs_fhget(%s/%Lu fh_crc=0x%08x ct=%d)\n",
		inode->i_sb->s_id,
		(unsigned long long)FUNC1(inode),
		FUNC23(fh),
		FUNC9(&inode->i_count));

out:
	return inode;

out_no_inode:
	FUNC11("nfs_fhget: iget failed with error %ld\n", FUNC5(inode));
	goto out;
}