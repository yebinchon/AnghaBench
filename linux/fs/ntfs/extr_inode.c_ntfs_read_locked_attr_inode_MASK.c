#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_11__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
struct inode {int i_mode; int i_size; int i_blocks; int /*<<< orphan*/  i_ino; TYPE_4__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_37__ {int cluster_size; unsigned int cluster_size_bits; int /*<<< orphan*/  sb; } ;
typedef  TYPE_8__ ntfs_volume ;
struct TYPE_36__ {TYPE_9__* base_ntfs_ino; } ;
struct TYPE_34__ {unsigned int block_size; unsigned int block_clusters; int size; scalar_t__ block_size_bits; } ;
struct TYPE_35__ {TYPE_5__ compressed; } ;
struct TYPE_38__ {scalar_t__ type; int initialized_size; int allocated_size; int nr_extents; scalar_t__ name_len; TYPE_7__ ext; TYPE_6__ itype; int /*<<< orphan*/  name; int /*<<< orphan*/  seq_no; } ;
typedef  TYPE_9__ ntfs_inode ;
struct TYPE_28__ {TYPE_11__* attr; } ;
typedef  TYPE_10__ ntfs_attr_search_ctx ;
struct TYPE_33__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_31__ {int compression_unit; int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  initialized_size; int /*<<< orphan*/  data_size; scalar_t__ lowest_vcn; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  mapping_pairs_offset; } ;
struct TYPE_30__ {int /*<<< orphan*/  value_offset; int /*<<< orphan*/  value_length; } ;
struct TYPE_32__ {TYPE_2__ non_resident; TYPE_1__ resident; } ;
struct TYPE_29__ {int flags; TYPE_3__ data; int /*<<< orphan*/  name_offset; scalar_t__ name_length; int /*<<< orphan*/  length; int /*<<< orphan*/  non_resident; } ;
typedef  int /*<<< orphan*/  MFT_RECORD ;
typedef  TYPE_11__ ATTR_RECORD ;

/* Variables and functions */
 int ATTR_COMPRESSION_MASK ; 
 int ATTR_IS_COMPRESSED ; 
 int ATTR_IS_ENCRYPTED ; 
 int ATTR_IS_SPARSE ; 
 scalar_t__ AT_DATA ; 
 scalar_t__ AT_INDEX_ROOT ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_9__*) ; 
 scalar_t__ FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 scalar_t__ FUNC7 (TYPE_9__*) ; 
 TYPE_9__* FUNC8 (struct inode*) ; 
 TYPE_8__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int S_IFMT ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_9__*) ; 
 TYPE_10__* FUNC18 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*) ; 
 int /*<<< orphan*/  ntfs_compressed_aops ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  ntfs_mst_aops ; 
 int /*<<< orphan*/  ntfs_normal_aops ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_9__*) ; 

__attribute__((used)) static int FUNC28(struct inode *base_vi, struct inode *vi)
{
	ntfs_volume *vol = FUNC9(vi->i_sb);
	ntfs_inode *ni, *base_ni;
	MFT_RECORD *m;
	ATTR_RECORD *a;
	ntfs_attr_search_ctx *ctx;
	int err = 0;

	FUNC21("Entering for i_ino 0x%lx.", vi->i_ino);

	FUNC23(vi);

	ni	= FUNC8(vi);
	base_ni = FUNC8(base_vi);

	/* Just mirror the values from the base inode. */
	vi->i_uid	= base_vi->i_uid;
	vi->i_gid	= base_vi->i_gid;
	FUNC24(vi, base_vi->i_nlink);
	vi->i_mtime	= base_vi->i_mtime;
	vi->i_ctime	= base_vi->i_ctime;
	vi->i_atime	= base_vi->i_atime;
	vi->i_generation = ni->seq_no = base_ni->seq_no;

	/* Set inode type to zero but preserve permissions. */
	vi->i_mode	= base_vi->i_mode & ~S_IFMT;

	m = FUNC17(base_ni);
	if (FUNC0(m)) {
		err = FUNC11(m);
		goto err_out;
	}
	ctx = FUNC18(base_ni, m);
	if (!ctx) {
		err = -ENOMEM;
		goto unm_err_out;
	}
	/* Find the attribute. */
	err = FUNC19(ni->type, ni->name, ni->name_len,
			CASE_SENSITIVE, 0, NULL, 0, ctx);
	if (FUNC26(err))
		goto unm_err_out;
	a = ctx->attr;
	if (a->flags & (ATTR_COMPRESSION_MASK | ATTR_IS_SPARSE)) {
		if (a->flags & ATTR_COMPRESSION_MASK) {
			FUNC3(ni);
			if ((ni->type != AT_DATA) || (ni->type == AT_DATA &&
					ni->name_len)) {
				FUNC22(vi->i_sb, "Found compressed "
						"non-data or named data "
						"attribute.  Please report "
						"you saw this message to "
						"linux-ntfs-dev@lists."
						"sourceforge.net");
				goto unm_err_out;
			}
			if (vol->cluster_size > 4096) {
				FUNC22(vi->i_sb, "Found compressed "
						"attribute but compression is "
						"disabled due to cluster size "
						"(%i) > 4kiB.",
						vol->cluster_size);
				goto unm_err_out;
			}
			if ((a->flags & ATTR_COMPRESSION_MASK) !=
					ATTR_IS_COMPRESSED) {
				FUNC22(vi->i_sb, "Found unknown "
						"compression method.");
				goto unm_err_out;
			}
		}
		/*
		 * The compressed/sparse flag set in an index root just means
		 * to compress all files.
		 */
		if (FUNC2(ni) && ni->type != AT_INDEX_ROOT) {
			FUNC22(vi->i_sb, "Found mst protected attribute "
					"but the attribute is %s.  Please "
					"report you saw this message to "
					"linux-ntfs-dev@lists.sourceforge.net",
					FUNC1(ni) ? "compressed" :
					"sparse");
			goto unm_err_out;
		}
		if (a->flags & ATTR_IS_SPARSE)
			FUNC6(ni);
	}
	if (a->flags & ATTR_IS_ENCRYPTED) {
		if (FUNC1(ni)) {
			FUNC22(vi->i_sb, "Found encrypted and compressed "
					"data.");
			goto unm_err_out;
		}
		/*
		 * The encryption flag set in an index root just means to
		 * encrypt all files.
		 */
		if (FUNC2(ni) && ni->type != AT_INDEX_ROOT) {
			FUNC22(vi->i_sb, "Found mst protected attribute "
					"but the attribute is encrypted.  "
					"Please report you saw this message "
					"to linux-ntfs-dev@lists.sourceforge."
					"net");
			goto unm_err_out;
		}
		if (ni->type != AT_DATA) {
			FUNC22(vi->i_sb, "Found encrypted non-data "
					"attribute.");
			goto unm_err_out;
		}
		FUNC4(ni);
	}
	if (!a->non_resident) {
		/* Ensure the attribute name is placed before the value. */
		if (FUNC26(a->name_length && (FUNC14(a->name_offset) >=
				FUNC14(a->data.resident.value_offset)))) {
			FUNC22(vol->sb, "Attribute name is placed after "
					"the attribute value.");
			goto unm_err_out;
		}
		if (FUNC2(ni)) {
			FUNC22(vi->i_sb, "Found mst protected attribute "
					"but the attribute is resident.  "
					"Please report you saw this message to "
					"linux-ntfs-dev@lists.sourceforge.net");
			goto unm_err_out;
		}
		vi->i_size = ni->initialized_size = FUNC15(
				a->data.resident.value_length);
		ni->allocated_size = FUNC15(a->length) -
				FUNC14(a->data.resident.value_offset);
		if (vi->i_size > ni->allocated_size) {
			FUNC22(vi->i_sb, "Resident attribute is corrupt "
					"(size exceeds allocation).");
			goto unm_err_out;
		}
	} else {
		FUNC5(ni);
		/*
		 * Ensure the attribute name is placed before the mapping pairs
		 * array.
		 */
		if (FUNC26(a->name_length && (FUNC14(a->name_offset) >=
				FUNC14(
				a->data.non_resident.mapping_pairs_offset)))) {
			FUNC22(vol->sb, "Attribute name is placed after "
					"the mapping pairs array.");
			goto unm_err_out;
		}
		if (FUNC1(ni) || FUNC7(ni)) {
			if (FUNC1(ni) && a->data.non_resident.
					compression_unit != 4) {
				FUNC22(vi->i_sb, "Found non-standard "
						"compression unit (%u instead "
						"of 4).  Cannot handle this.",
						a->data.non_resident.
						compression_unit);
				err = -EOPNOTSUPP;
				goto unm_err_out;
			}
			if (a->data.non_resident.compression_unit) {
				ni->itype.compressed.block_size = 1U <<
						(a->data.non_resident.
						compression_unit +
						vol->cluster_size_bits);
				ni->itype.compressed.block_size_bits =
						FUNC12(ni->itype.compressed.
						block_size) - 1;
				ni->itype.compressed.block_clusters = 1U <<
						a->data.non_resident.
						compression_unit;
			} else {
				ni->itype.compressed.block_size = 0;
				ni->itype.compressed.block_size_bits = 0;
				ni->itype.compressed.block_clusters = 0;
			}
			ni->itype.compressed.size = FUNC25(
					a->data.non_resident.compressed_size);
		}
		if (a->data.non_resident.lowest_vcn) {
			FUNC22(vi->i_sb, "First extent of attribute has "
					"non-zero lowest_vcn.");
			goto unm_err_out;
		}
		vi->i_size = FUNC25(a->data.non_resident.data_size);
		ni->initialized_size = FUNC25(
				a->data.non_resident.initialized_size);
		ni->allocated_size = FUNC25(
				a->data.non_resident.allocated_size);
	}
	vi->i_mapping->a_ops = &ntfs_normal_aops;
	if (FUNC2(ni))
		vi->i_mapping->a_ops = &ntfs_mst_aops;
	else if (FUNC1(ni))
		vi->i_mapping->a_ops = &ntfs_compressed_aops;
	if ((FUNC1(ni) || FUNC7(ni)) && ni->type != AT_INDEX_ROOT)
		vi->i_blocks = ni->itype.compressed.size >> 9;
	else
		vi->i_blocks = ni->allocated_size >> 9;
	/*
	 * Make sure the base inode does not go away and attach it to the
	 * attribute inode.
	 */
	FUNC13(base_vi);
	ni->ext.base_ntfs_ino = base_ni;
	ni->nr_extents = -1;

	FUNC20(ctx);
	FUNC27(base_ni);

	FUNC21("Done.");
	return 0;

unm_err_out:
	if (!err)
		err = -EIO;
	if (ctx)
		FUNC20(ctx);
	FUNC27(base_ni);
err_out:
	FUNC22(vol->sb, "Failed with error code %i while reading attribute "
			"inode (mft_no 0x%lx, type 0x%x, name_len %i).  "
			"Marking corrupt inode and base inode 0x%lx as bad.  "
			"Run chkdsk.", err, vi->i_ino, ni->type, ni->name_len,
			base_vi->i_ino);
	FUNC16(vi);
	if (err != -ENOMEM)
		FUNC10(vol);
	return err;
}