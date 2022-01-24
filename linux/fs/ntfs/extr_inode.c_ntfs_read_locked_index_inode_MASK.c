#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_13__ ;
typedef  struct TYPE_30__   TYPE_12__ ;
typedef  struct TYPE_29__   TYPE_11__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct inode {int i_mode; int i_size; int i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; TYPE_7__* i_mapping; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_40__ {int mft_record_size; scalar_t__ cluster_size; scalar_t__ sector_size; int /*<<< orphan*/  sb; int /*<<< orphan*/  sector_size_bits; int /*<<< orphan*/  cluster_size_bits; } ;
typedef  TYPE_9__ ntfs_volume ;
struct TYPE_39__ {TYPE_10__* base_ntfs_ino; } ;
struct TYPE_36__ {int block_size; int block_size_bits; scalar_t__ vcn_size; int /*<<< orphan*/  vcn_size_bits; scalar_t__ collation_rule; } ;
struct TYPE_37__ {TYPE_5__ index; } ;
struct TYPE_28__ {int initialized_size; int allocated_size; int nr_extents; int /*<<< orphan*/  name_len; TYPE_8__ ext; TYPE_6__ itype; int /*<<< orphan*/  name; int /*<<< orphan*/  seq_no; } ;
typedef  TYPE_10__ ntfs_inode ;
struct TYPE_29__ {TYPE_13__* attr; scalar_t__ mrec; } ;
typedef  TYPE_11__ ntfs_attr_search_ctx ;
typedef  int loff_t ;
struct TYPE_38__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_34__ {int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  initialized_size; int /*<<< orphan*/  data_size; scalar_t__ lowest_vcn; int /*<<< orphan*/  mapping_pairs_offset; } ;
struct TYPE_32__ {scalar_t__ value_length; int /*<<< orphan*/  value_offset; } ;
struct TYPE_35__ {TYPE_3__ non_resident; TYPE_1__ resident; } ;
struct TYPE_33__ {int flags; scalar_t__ index_length; } ;
struct TYPE_31__ {int non_resident; int flags; TYPE_4__ data; int /*<<< orphan*/  name_offset; scalar_t__ name_length; } ;
struct TYPE_30__ {TYPE_2__ index; scalar_t__ index_block_size; scalar_t__ collation_rule; scalar_t__ type; } ;
typedef  struct inode MFT_RECORD ;
typedef  TYPE_12__ INDEX_ROOT ;
typedef  TYPE_13__ ATTR_RECORD ;

/* Variables and functions */
 int ATTR_COMPRESSION_MASK ; 
 int ATTR_IS_ENCRYPTED ; 
 int ATTR_IS_SPARSE ; 
 int /*<<< orphan*/  AT_BITMAP ; 
 int /*<<< orphan*/  AT_INDEX_ALLOCATION ; 
 int /*<<< orphan*/  AT_INDEX_ROOT ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int LARGE_INDEX ; 
 scalar_t__ FUNC1 (TYPE_10__*) ; 
 scalar_t__ FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*) ; 
 scalar_t__ FUNC4 (TYPE_10__*) ; 
 scalar_t__ NTFS_BLOCK_SIZE ; 
 TYPE_10__* FUNC5 (struct inode*) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC8 (struct inode*) ; 
 int S_IFMT ; 
 int FUNC9 (scalar_t__) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 struct inode* FUNC17 (TYPE_10__*) ; 
 TYPE_11__* FUNC18 (TYPE_10__*,struct inode*) ; 
 struct inode* FUNC19 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  ntfs_mst_aops ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_10__*) ; 

__attribute__((used)) static int FUNC30(struct inode *base_vi, struct inode *vi)
{
	loff_t bvi_size;
	ntfs_volume *vol = FUNC6(vi->i_sb);
	ntfs_inode *ni, *base_ni, *bni;
	struct inode *bvi;
	MFT_RECORD *m;
	ATTR_RECORD *a;
	ntfs_attr_search_ctx *ctx;
	INDEX_ROOT *ir;
	u8 *ir_end, *index_end;
	int err = 0;

	FUNC23("Entering for i_ino 0x%lx.", vi->i_ino);
	FUNC25(vi);
	ni	= FUNC5(vi);
	base_ni = FUNC5(base_vi);
	/* Just mirror the values from the base inode. */
	vi->i_uid	= base_vi->i_uid;
	vi->i_gid	= base_vi->i_gid;
	FUNC26(vi, base_vi->i_nlink);
	vi->i_mtime	= base_vi->i_mtime;
	vi->i_ctime	= base_vi->i_ctime;
	vi->i_atime	= base_vi->i_atime;
	vi->i_generation = ni->seq_no = base_ni->seq_no;
	/* Set inode type to zero but preserve permissions. */
	vi->i_mode	= base_vi->i_mode & ~S_IFMT;
	/* Map the mft record for the base inode. */
	m = FUNC17(base_ni);
	if (FUNC0(m)) {
		err = FUNC8(m);
		goto err_out;
	}
	ctx = FUNC18(base_ni, m);
	if (!ctx) {
		err = -ENOMEM;
		goto unm_err_out;
	}
	/* Find the index root attribute. */
	err = FUNC20(AT_INDEX_ROOT, ni->name, ni->name_len,
			CASE_SENSITIVE, 0, NULL, 0, ctx);
	if (FUNC28(err)) {
		if (err == -ENOENT)
			FUNC24(vi->i_sb, "$INDEX_ROOT attribute is "
					"missing.");
		goto unm_err_out;
	}
	a = ctx->attr;
	/* Set up the state. */
	if (FUNC28(a->non_resident)) {
		FUNC24(vol->sb, "$INDEX_ROOT attribute is not resident.");
		goto unm_err_out;
	}
	/* Ensure the attribute name is placed before the value. */
	if (FUNC28(a->name_length && (FUNC14(a->name_offset) >=
			FUNC14(a->data.resident.value_offset)))) {
		FUNC24(vol->sb, "$INDEX_ROOT attribute name is placed "
				"after the attribute value.");
		goto unm_err_out;
	}
	/*
	 * Compressed/encrypted/sparse index root is not allowed, except for
	 * directories of course but those are not dealt with here.
	 */
	if (a->flags & (ATTR_COMPRESSION_MASK | ATTR_IS_ENCRYPTED |
			ATTR_IS_SPARSE)) {
		FUNC24(vi->i_sb, "Found compressed/encrypted/sparse index "
				"root attribute.");
		goto unm_err_out;
	}
	ir = (INDEX_ROOT*)((u8*)a + FUNC14(a->data.resident.value_offset));
	ir_end = (u8*)ir + FUNC15(a->data.resident.value_length);
	if (ir_end > (u8*)ctx->mrec + vol->mft_record_size) {
		FUNC24(vi->i_sb, "$INDEX_ROOT attribute is corrupt.");
		goto unm_err_out;
	}
	index_end = (u8*)&ir->index + FUNC15(ir->index.index_length);
	if (index_end > ir_end) {
		FUNC24(vi->i_sb, "Index is corrupt.");
		goto unm_err_out;
	}
	if (ir->type) {
		FUNC24(vi->i_sb, "Index type is not 0 (type is 0x%x).",
				FUNC15(ir->type));
		goto unm_err_out;
	}
	ni->itype.index.collation_rule = ir->collation_rule;
	FUNC23("Index collation rule is 0x%x.",
			FUNC15(ir->collation_rule));
	ni->itype.index.block_size = FUNC15(ir->index_block_size);
	if (!FUNC13(ni->itype.index.block_size)) {
		FUNC24(vi->i_sb, "Index block size (%u) is not a power of "
				"two.", ni->itype.index.block_size);
		goto unm_err_out;
	}
	if (ni->itype.index.block_size > PAGE_SIZE) {
		FUNC24(vi->i_sb, "Index block size (%u) > PAGE_SIZE "
				"(%ld) is not supported.  Sorry.",
				ni->itype.index.block_size, PAGE_SIZE);
		err = -EOPNOTSUPP;
		goto unm_err_out;
	}
	if (ni->itype.index.block_size < NTFS_BLOCK_SIZE) {
		FUNC24(vi->i_sb, "Index block size (%u) < NTFS_BLOCK_SIZE "
				"(%i) is not supported.  Sorry.",
				ni->itype.index.block_size, NTFS_BLOCK_SIZE);
		err = -EOPNOTSUPP;
		goto unm_err_out;
	}
	ni->itype.index.block_size_bits = FUNC9(ni->itype.index.block_size) - 1;
	/* Determine the size of a vcn in the index. */
	if (vol->cluster_size <= ni->itype.index.block_size) {
		ni->itype.index.vcn_size = vol->cluster_size;
		ni->itype.index.vcn_size_bits = vol->cluster_size_bits;
	} else {
		ni->itype.index.vcn_size = vol->sector_size;
		ni->itype.index.vcn_size_bits = vol->sector_size_bits;
	}
	/* Check for presence of index allocation attribute. */
	if (!(ir->index.flags & LARGE_INDEX)) {
		/* No index allocation. */
		vi->i_size = ni->initialized_size = ni->allocated_size = 0;
		/* We are done with the mft record, so we release it. */
		FUNC21(ctx);
		FUNC29(base_ni);
		m = NULL;
		ctx = NULL;
		goto skip_large_index_stuff;
	} /* LARGE_INDEX:  Index allocation present.  Setup state. */
	FUNC3(ni);
	/* Find index allocation attribute. */
	FUNC22(ctx);
	err = FUNC20(AT_INDEX_ALLOCATION, ni->name, ni->name_len,
			CASE_SENSITIVE, 0, NULL, 0, ctx);
	if (FUNC28(err)) {
		if (err == -ENOENT)
			FUNC24(vi->i_sb, "$INDEX_ALLOCATION attribute is "
					"not present but $INDEX_ROOT "
					"indicated it is.");
		else
			FUNC24(vi->i_sb, "Failed to lookup "
					"$INDEX_ALLOCATION attribute.");
		goto unm_err_out;
	}
	a = ctx->attr;
	if (!a->non_resident) {
		FUNC24(vi->i_sb, "$INDEX_ALLOCATION attribute is "
				"resident.");
		goto unm_err_out;
	}
	/*
	 * Ensure the attribute name is placed before the mapping pairs array.
	 */
	if (FUNC28(a->name_length && (FUNC14(a->name_offset) >=
			FUNC14(
			a->data.non_resident.mapping_pairs_offset)))) {
		FUNC24(vol->sb, "$INDEX_ALLOCATION attribute name is "
				"placed after the mapping pairs array.");
		goto unm_err_out;
	}
	if (a->flags & ATTR_IS_ENCRYPTED) {
		FUNC24(vi->i_sb, "$INDEX_ALLOCATION attribute is "
				"encrypted.");
		goto unm_err_out;
	}
	if (a->flags & ATTR_IS_SPARSE) {
		FUNC24(vi->i_sb, "$INDEX_ALLOCATION attribute is sparse.");
		goto unm_err_out;
	}
	if (a->flags & ATTR_COMPRESSION_MASK) {
		FUNC24(vi->i_sb, "$INDEX_ALLOCATION attribute is "
				"compressed.");
		goto unm_err_out;
	}
	if (a->data.non_resident.lowest_vcn) {
		FUNC24(vi->i_sb, "First extent of $INDEX_ALLOCATION "
				"attribute has non zero lowest_vcn.");
		goto unm_err_out;
	}
	vi->i_size = FUNC27(a->data.non_resident.data_size);
	ni->initialized_size = FUNC27(
			a->data.non_resident.initialized_size);
	ni->allocated_size = FUNC27(a->data.non_resident.allocated_size);
	/*
	 * We are done with the mft record, so we release it.  Otherwise
	 * we would deadlock in ntfs_attr_iget().
	 */
	FUNC21(ctx);
	FUNC29(base_ni);
	m = NULL;
	ctx = NULL;
	/* Get the index bitmap attribute inode. */
	bvi = FUNC19(base_vi, AT_BITMAP, ni->name, ni->name_len);
	if (FUNC0(bvi)) {
		FUNC24(vi->i_sb, "Failed to get bitmap attribute.");
		err = FUNC8(bvi);
		goto unm_err_out;
	}
	bni = FUNC5(bvi);
	if (FUNC1(bni) || FUNC2(bni) ||
			FUNC4(bni)) {
		FUNC24(vi->i_sb, "$BITMAP attribute is compressed and/or "
				"encrypted and/or sparse.");
		goto iput_unm_err_out;
	}
	/* Consistency check bitmap size vs. index allocation size. */
	bvi_size = FUNC10(bvi);
	if ((bvi_size << 3) < (vi->i_size >> ni->itype.index.block_size_bits)) {
		FUNC24(vi->i_sb, "Index bitmap too small (0x%llx) for "
				"index allocation (0x%llx).", bvi_size << 3,
				vi->i_size);
		goto iput_unm_err_out;
	}
	FUNC12(bvi);
skip_large_index_stuff:
	/* Setup the operations for this index inode. */
	vi->i_mapping->a_ops = &ntfs_mst_aops;
	vi->i_blocks = ni->allocated_size >> 9;
	/*
	 * Make sure the base inode doesn't go away and attach it to the
	 * index inode.
	 */
	FUNC11(base_vi);
	ni->ext.base_ntfs_ino = base_ni;
	ni->nr_extents = -1;

	FUNC23("Done.");
	return 0;
iput_unm_err_out:
	FUNC12(bvi);
unm_err_out:
	if (!err)
		err = -EIO;
	if (ctx)
		FUNC21(ctx);
	if (m)
		FUNC29(base_ni);
err_out:
	FUNC24(vi->i_sb, "Failed with error code %i while reading index "
			"inode (mft_no 0x%lx, name_len %i.", err, vi->i_ino,
			ni->name_len);
	FUNC16(vi);
	if (err != -EOPNOTSUPP && err != -ENOMEM)
		FUNC7(vol);
	return err;
}