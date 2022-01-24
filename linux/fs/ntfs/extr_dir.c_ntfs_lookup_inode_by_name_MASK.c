#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_52__   TYPE_9__ ;
typedef  struct TYPE_51__   TYPE_8__ ;
typedef  struct TYPE_50__   TYPE_7__ ;
typedef  struct TYPE_49__   TYPE_6__ ;
typedef  struct TYPE_48__   TYPE_5__ ;
typedef  struct TYPE_47__   TYPE_4__ ;
typedef  struct TYPE_46__   TYPE_3__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_29__ ;
typedef  struct TYPE_43__   TYPE_1__ ;
typedef  struct TYPE_42__   TYPE_18__ ;
typedef  struct TYPE_41__   TYPE_17__ ;
typedef  struct TYPE_40__   TYPE_16__ ;
typedef  struct TYPE_39__   TYPE_15__ ;
typedef  struct TYPE_38__   TYPE_14__ ;
typedef  struct TYPE_37__   TYPE_13__ ;
typedef  struct TYPE_36__   TYPE_12__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  void* u64 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  sle64 ;
typedef  int /*<<< orphan*/  ntfschar ;
struct TYPE_36__ {int cluster_size_bits; int /*<<< orphan*/  upcase_len; int /*<<< orphan*/  upcase; struct super_block* sb; } ;
typedef  TYPE_12__ ntfs_volume ;
struct TYPE_37__ {void* mref; scalar_t__ len; int /*<<< orphan*/  name; scalar_t__ type; } ;
typedef  TYPE_13__ ntfs_name ;
struct TYPE_48__ {int vcn_size_bits; int block_size; } ;
struct TYPE_49__ {TYPE_5__ index; } ;
struct TYPE_38__ {int /*<<< orphan*/  mft_no; TYPE_6__ itype; TYPE_12__* vol; } ;
typedef  TYPE_14__ ntfs_inode ;
struct TYPE_39__ {scalar_t__ mrec; TYPE_3__* attr; } ;
typedef  TYPE_15__ ntfs_attr_search_ctx ;
typedef  int VCN ;
struct TYPE_52__ {scalar_t__ file_name_length; scalar_t__ file_name_type; int /*<<< orphan*/  file_name; } ;
struct TYPE_50__ {int /*<<< orphan*/  indexed_file; } ;
struct TYPE_51__ {TYPE_7__ dir; } ;
struct TYPE_47__ {int /*<<< orphan*/  entries_offset; int /*<<< orphan*/  index_length; } ;
struct TYPE_43__ {int /*<<< orphan*/  value_offset; } ;
struct TYPE_45__ {TYPE_1__ resident; } ;
struct TYPE_46__ {TYPE_2__ data; } ;
struct TYPE_44__ {struct address_space* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_35__ {int flags; int /*<<< orphan*/  entries_offset; int /*<<< orphan*/  index_length; int /*<<< orphan*/  allocated_size; } ;
struct TYPE_42__ {TYPE_11__ index; int /*<<< orphan*/  index_block_vcn; int /*<<< orphan*/  magic; } ;
struct TYPE_34__ {TYPE_9__ file_name; } ;
struct TYPE_41__ {int flags; int /*<<< orphan*/  length; TYPE_10__ key; TYPE_8__ data; int /*<<< orphan*/  key_length; } ;
struct TYPE_40__ {TYPE_4__ index; } ;
typedef  void* MFT_REF ;
typedef  struct page MFT_RECORD ;
typedef  TYPE_16__ INDEX_ROOT ;
typedef  int /*<<< orphan*/  INDEX_ENTRY_HEADER ;
typedef  TYPE_17__ INDEX_ENTRY ;
typedef  TYPE_18__ INDEX_ALLOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  AT_INDEX_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 void* FUNC1 (int) ; 
 scalar_t__ FILE_NAME_DOS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  I30 ; 
 int /*<<< orphan*/  IGNORE_CASE ; 
 int INDEX_ENTRY_END ; 
 int INDEX_ENTRY_NODE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int LEAF_NODE ; 
 int FUNC3 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*) ; 
 int NODE_MASK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_29__* FUNC8 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_13__*) ; 
 TYPE_13__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct page* FUNC15 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_15__* FUNC18 (TYPE_14__*,struct page*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_15__*) ; 
 int FUNC21 (int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 struct page* FUNC25 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 scalar_t__ FUNC27 (struct page*) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_14__*) ; 

MFT_REF FUNC33(ntfs_inode *dir_ni, const ntfschar *uname,
		const int uname_len, ntfs_name **res)
{
	ntfs_volume *vol = dir_ni->vol;
	struct super_block *sb = vol->sb;
	MFT_RECORD *m;
	INDEX_ROOT *ir;
	INDEX_ENTRY *ie;
	INDEX_ALLOCATION *ia;
	u8 *index_end;
	u64 mref;
	ntfs_attr_search_ctx *ctx;
	int err, rc;
	VCN vcn, old_vcn;
	struct address_space *ia_mapping;
	struct page *page;
	u8 *kaddr;
	ntfs_name *name = NULL;

	FUNC0(!FUNC7(FUNC8(dir_ni)->i_mode));
	FUNC0(FUNC3(dir_ni));
	/* Get hold of the mft record for the directory. */
	m = FUNC15(dir_ni);
	if (FUNC2(m)) {
		FUNC23(sb, "map_mft_record() failed with error code %ld.",
				-FUNC6(m));
		return FUNC1(FUNC6(m));
	}
	ctx = FUNC18(dir_ni, m);
	if (FUNC30(!ctx)) {
		err = -ENOMEM;
		goto err_out;
	}
	/* Find the index root attribute in the mft record. */
	err = FUNC19(AT_INDEX_ROOT, I30, 4, CASE_SENSITIVE, 0, NULL,
			0, ctx);
	if (FUNC30(err)) {
		if (err == -ENOENT) {
			FUNC23(sb, "Index root attribute missing in "
					"directory inode 0x%lx.",
					dir_ni->mft_no);
			err = -EIO;
		}
		goto err_out;
	}
	/* Get to the index root value (it's been verified in read_inode). */
	ir = (INDEX_ROOT*)((u8*)ctx->attr +
			FUNC11(ctx->attr->data.resident.value_offset));
	index_end = (u8*)&ir->index + FUNC12(ir->index.index_length);
	/* The first index entry. */
	ie = (INDEX_ENTRY*)((u8*)&ir->index +
			FUNC12(ir->index.entries_offset));
	/*
	 * Loop until we exceed valid memory (corruption case) or until we
	 * reach the last entry.
	 */
	for (;; ie = (INDEX_ENTRY*)((u8*)ie + FUNC11(ie->length))) {
		/* Bounds checks. */
		if ((u8*)ie < (u8*)ctx->mrec || (u8*)ie +
				sizeof(INDEX_ENTRY_HEADER) > index_end ||
				(u8*)ie + FUNC11(ie->key_length) >
				index_end)
			goto dir_err_out;
		/*
		 * The last entry cannot contain a name. It can however contain
		 * a pointer to a child node in the B+tree so we just break out.
		 */
		if (ie->flags & INDEX_ENTRY_END)
			break;
		/*
		 * We perform a case sensitive comparison and if that matches
		 * we are done and return the mft reference of the inode (i.e.
		 * the inode number together with the sequence number for
		 * consistency checking). We convert it to cpu format before
		 * returning.
		 */
		if (FUNC17(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length,
				CASE_SENSITIVE, vol->upcase, vol->upcase_len)) {
found_it:
			/*
			 * We have a perfect match, so we don't need to care
			 * about having matched imperfectly before, so we can
			 * free name and set *res to NULL.
			 * However, if the perfect match is a short file name,
			 * we need to signal this through *res, so that
			 * ntfs_lookup() can fix dcache aliasing issues.
			 * As an optimization we just reuse an existing
			 * allocation of *res.
			 */
			if (ie->key.file_name.file_name_type == FILE_NAME_DOS) {
				if (!name) {
					name = FUNC10(sizeof(ntfs_name),
							GFP_NOFS);
					if (!name) {
						err = -ENOMEM;
						goto err_out;
					}
				}
				name->mref = FUNC13(
						ie->data.dir.indexed_file);
				name->type = FILE_NAME_DOS;
				name->len = 0;
				*res = name;
			} else {
				FUNC9(name);
				*res = NULL;
			}
			mref = FUNC13(ie->data.dir.indexed_file);
			FUNC20(ctx);
			FUNC32(dir_ni);
			return mref;
		}
		/*
		 * For a case insensitive mount, we also perform a case
		 * insensitive comparison (provided the file name is not in the
		 * POSIX namespace). If the comparison matches, and the name is
		 * in the WIN32 namespace, we cache the filename in *res so
		 * that the caller, ntfs_lookup(), can work on it. If the
		 * comparison matches, and the name is in the DOS namespace, we
		 * only cache the mft reference and the file name type (we set
		 * the name length to zero for simplicity).
		 */
		if (!FUNC5(vol) &&
				ie->key.file_name.file_name_type &&
				FUNC17(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length,
				IGNORE_CASE, vol->upcase, vol->upcase_len)) {
			int name_size = sizeof(ntfs_name);
			u8 type = ie->key.file_name.file_name_type;
			u8 len = ie->key.file_name.file_name_length;

			/* Only one case insensitive matching name allowed. */
			if (name) {
				FUNC23(sb, "Found already allocated name "
						"in phase 1. Please run chkdsk "
						"and if that doesn't find any "
						"errors please report you saw "
						"this message to "
						"linux-ntfs-dev@lists."
						"sourceforge.net.");
				goto dir_err_out;
			}

			if (type != FILE_NAME_DOS)
				name_size += len * sizeof(ntfschar);
			name = FUNC10(name_size, GFP_NOFS);
			if (!name) {
				err = -ENOMEM;
				goto err_out;
			}
			name->mref = FUNC13(ie->data.dir.indexed_file);
			name->type = type;
			if (type != FILE_NAME_DOS) {
				name->len = len;
				FUNC16(name->name, ie->key.file_name.file_name,
						len * sizeof(ntfschar));
			} else
				name->len = 0;
			*res = name;
		}
		/*
		 * Not a perfect match, need to do full blown collation so we
		 * know which way in the B+tree we have to go.
		 */
		rc = FUNC21(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length, 1,
				IGNORE_CASE, vol->upcase, vol->upcase_len);
		/*
		 * If uname collates before the name of the current entry, there
		 * is definitely no such name in this index but we might need to
		 * descend into the B+tree so we just break out of the loop.
		 */
		if (rc == -1)
			break;
		/* The names are not equal, continue the search. */
		if (rc)
			continue;
		/*
		 * Names match with case insensitive comparison, now try the
		 * case sensitive comparison, which is required for proper
		 * collation.
		 */
		rc = FUNC21(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length, 1,
				CASE_SENSITIVE, vol->upcase, vol->upcase_len);
		if (rc == -1)
			break;
		if (rc)
			continue;
		/*
		 * Perfect match, this will never happen as the
		 * ntfs_are_names_equal() call will have gotten a match but we
		 * still treat it correctly.
		 */
		goto found_it;
	}
	/*
	 * We have finished with this index without success. Check for the
	 * presence of a child node and if not present return -ENOENT, unless
	 * we have got a matching name cached in name in which case return the
	 * mft reference associated with it.
	 */
	if (!(ie->flags & INDEX_ENTRY_NODE)) {
		if (name) {
			FUNC20(ctx);
			FUNC32(dir_ni);
			return name->mref;
		}
		FUNC22("Entry not found.");
		err = -ENOENT;
		goto err_out;
	} /* Child node present, descend into it. */
	/* Consistency check: Verify that an index allocation exists. */
	if (!FUNC4(dir_ni)) {
		FUNC23(sb, "No index allocation attribute but index entry "
				"requires one. Directory inode 0x%lx is "
				"corrupt or driver bug.", dir_ni->mft_no);
		goto err_out;
	}
	/* Get the starting vcn of the index_block holding the child node. */
	vcn = FUNC29((sle64*)((u8*)ie + FUNC11(ie->length) - 8));
	ia_mapping = FUNC8(dir_ni)->i_mapping;
	/*
	 * We are done with the index root and the mft record. Release them,
	 * otherwise we deadlock with ntfs_map_page().
	 */
	FUNC20(ctx);
	FUNC32(dir_ni);
	m = NULL;
	ctx = NULL;
descend_into_child_node:
	/*
	 * Convert vcn to index into the index allocation attribute in units
	 * of PAGE_SIZE and map the page cache page, reading it from
	 * disk if necessary.
	 */
	page = FUNC25(ia_mapping, vcn <<
			dir_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
	if (FUNC2(page)) {
		FUNC23(sb, "Failed to map directory index page, error %ld.",
				-FUNC6(page));
		err = FUNC6(page);
		goto err_out;
	}
	FUNC14(page);
	kaddr = (u8*)FUNC27(page);
fast_descend_into_child_node:
	/* Get to the index allocation block. */
	ia = (INDEX_ALLOCATION*)(kaddr + ((vcn <<
			dir_ni->itype.index.vcn_size_bits) & ~PAGE_MASK));
	/* Bounds checks. */
	if ((u8*)ia < kaddr || (u8*)ia > kaddr + PAGE_SIZE) {
		FUNC23(sb, "Out of bounds check failed. Corrupt directory "
				"inode 0x%lx or driver bug.", dir_ni->mft_no);
		goto unm_err_out;
	}
	/* Catch multi sector transfer fixup errors. */
	if (FUNC30(!FUNC24(ia->magic))) {
		FUNC23(sb, "Directory index record with vcn 0x%llx is "
				"corrupt.  Corrupt inode 0x%lx.  Run chkdsk.",
				(unsigned long long)vcn, dir_ni->mft_no);
		goto unm_err_out;
	}
	if (FUNC28(ia->index_block_vcn) != vcn) {
		FUNC23(sb, "Actual VCN (0x%llx) of index buffer is "
				"different from expected VCN (0x%llx). "
				"Directory inode 0x%lx is corrupt or driver "
				"bug.", (unsigned long long)
				FUNC28(ia->index_block_vcn),
				(unsigned long long)vcn, dir_ni->mft_no);
		goto unm_err_out;
	}
	if (FUNC12(ia->index.allocated_size) + 0x18 !=
			dir_ni->itype.index.block_size) {
		FUNC23(sb, "Index buffer (VCN 0x%llx) of directory inode "
				"0x%lx has a size (%u) differing from the "
				"directory specified size (%u). Directory "
				"inode is corrupt or driver bug.",
				(unsigned long long)vcn, dir_ni->mft_no,
				FUNC12(ia->index.allocated_size) + 0x18,
				dir_ni->itype.index.block_size);
		goto unm_err_out;
	}
	index_end = (u8*)ia + dir_ni->itype.index.block_size;
	if (index_end > kaddr + PAGE_SIZE) {
		FUNC23(sb, "Index buffer (VCN 0x%llx) of directory inode "
				"0x%lx crosses page boundary. Impossible! "
				"Cannot access! This is probably a bug in the "
				"driver.", (unsigned long long)vcn,
				dir_ni->mft_no);
		goto unm_err_out;
	}
	index_end = (u8*)&ia->index + FUNC12(ia->index.index_length);
	if (index_end > (u8*)ia + dir_ni->itype.index.block_size) {
		FUNC23(sb, "Size of index buffer (VCN 0x%llx) of directory "
				"inode 0x%lx exceeds maximum size.",
				(unsigned long long)vcn, dir_ni->mft_no);
		goto unm_err_out;
	}
	/* The first index entry. */
	ie = (INDEX_ENTRY*)((u8*)&ia->index +
			FUNC12(ia->index.entries_offset));
	/*
	 * Iterate similar to above big loop but applied to index buffer, thus
	 * loop until we exceed valid memory (corruption case) or until we
	 * reach the last entry.
	 */
	for (;; ie = (INDEX_ENTRY*)((u8*)ie + FUNC11(ie->length))) {
		/* Bounds check. */
		if ((u8*)ie < (u8*)ia || (u8*)ie +
				sizeof(INDEX_ENTRY_HEADER) > index_end ||
				(u8*)ie + FUNC11(ie->key_length) >
				index_end) {
			FUNC23(sb, "Index entry out of bounds in "
					"directory inode 0x%lx.",
					dir_ni->mft_no);
			goto unm_err_out;
		}
		/*
		 * The last entry cannot contain a name. It can however contain
		 * a pointer to a child node in the B+tree so we just break out.
		 */
		if (ie->flags & INDEX_ENTRY_END)
			break;
		/*
		 * We perform a case sensitive comparison and if that matches
		 * we are done and return the mft reference of the inode (i.e.
		 * the inode number together with the sequence number for
		 * consistency checking). We convert it to cpu format before
		 * returning.
		 */
		if (FUNC17(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length,
				CASE_SENSITIVE, vol->upcase, vol->upcase_len)) {
found_it2:
			/*
			 * We have a perfect match, so we don't need to care
			 * about having matched imperfectly before, so we can
			 * free name and set *res to NULL.
			 * However, if the perfect match is a short file name,
			 * we need to signal this through *res, so that
			 * ntfs_lookup() can fix dcache aliasing issues.
			 * As an optimization we just reuse an existing
			 * allocation of *res.
			 */
			if (ie->key.file_name.file_name_type == FILE_NAME_DOS) {
				if (!name) {
					name = FUNC10(sizeof(ntfs_name),
							GFP_NOFS);
					if (!name) {
						err = -ENOMEM;
						goto unm_err_out;
					}
				}
				name->mref = FUNC13(
						ie->data.dir.indexed_file);
				name->type = FILE_NAME_DOS;
				name->len = 0;
				*res = name;
			} else {
				FUNC9(name);
				*res = NULL;
			}
			mref = FUNC13(ie->data.dir.indexed_file);
			FUNC31(page);
			FUNC26(page);
			return mref;
		}
		/*
		 * For a case insensitive mount, we also perform a case
		 * insensitive comparison (provided the file name is not in the
		 * POSIX namespace). If the comparison matches, and the name is
		 * in the WIN32 namespace, we cache the filename in *res so
		 * that the caller, ntfs_lookup(), can work on it. If the
		 * comparison matches, and the name is in the DOS namespace, we
		 * only cache the mft reference and the file name type (we set
		 * the name length to zero for simplicity).
		 */
		if (!FUNC5(vol) &&
				ie->key.file_name.file_name_type &&
				FUNC17(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length,
				IGNORE_CASE, vol->upcase, vol->upcase_len)) {
			int name_size = sizeof(ntfs_name);
			u8 type = ie->key.file_name.file_name_type;
			u8 len = ie->key.file_name.file_name_length;

			/* Only one case insensitive matching name allowed. */
			if (name) {
				FUNC23(sb, "Found already allocated name "
						"in phase 2. Please run chkdsk "
						"and if that doesn't find any "
						"errors please report you saw "
						"this message to "
						"linux-ntfs-dev@lists."
						"sourceforge.net.");
				FUNC31(page);
				FUNC26(page);
				goto dir_err_out;
			}

			if (type != FILE_NAME_DOS)
				name_size += len * sizeof(ntfschar);
			name = FUNC10(name_size, GFP_NOFS);
			if (!name) {
				err = -ENOMEM;
				goto unm_err_out;
			}
			name->mref = FUNC13(ie->data.dir.indexed_file);
			name->type = type;
			if (type != FILE_NAME_DOS) {
				name->len = len;
				FUNC16(name->name, ie->key.file_name.file_name,
						len * sizeof(ntfschar));
			} else
				name->len = 0;
			*res = name;
		}
		/*
		 * Not a perfect match, need to do full blown collation so we
		 * know which way in the B+tree we have to go.
		 */
		rc = FUNC21(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length, 1,
				IGNORE_CASE, vol->upcase, vol->upcase_len);
		/*
		 * If uname collates before the name of the current entry, there
		 * is definitely no such name in this index but we might need to
		 * descend into the B+tree so we just break out of the loop.
		 */
		if (rc == -1)
			break;
		/* The names are not equal, continue the search. */
		if (rc)
			continue;
		/*
		 * Names match with case insensitive comparison, now try the
		 * case sensitive comparison, which is required for proper
		 * collation.
		 */
		rc = FUNC21(uname, uname_len,
				(ntfschar*)&ie->key.file_name.file_name,
				ie->key.file_name.file_name_length, 1,
				CASE_SENSITIVE, vol->upcase, vol->upcase_len);
		if (rc == -1)
			break;
		if (rc)
			continue;
		/*
		 * Perfect match, this will never happen as the
		 * ntfs_are_names_equal() call will have gotten a match but we
		 * still treat it correctly.
		 */
		goto found_it2;
	}
	/*
	 * We have finished with this index buffer without success. Check for
	 * the presence of a child node.
	 */
	if (ie->flags & INDEX_ENTRY_NODE) {
		if ((ia->index.flags & NODE_MASK) == LEAF_NODE) {
			FUNC23(sb, "Index entry with child node found in "
					"a leaf node in directory inode 0x%lx.",
					dir_ni->mft_no);
			goto unm_err_out;
		}
		/* Child node present, descend into it. */
		old_vcn = vcn;
		vcn = FUNC29((sle64*)((u8*)ie +
				FUNC11(ie->length) - 8));
		if (vcn >= 0) {
			/* If vcn is in the same page cache page as old_vcn we
			 * recycle the mapped page. */
			if (old_vcn << vol->cluster_size_bits >>
					PAGE_SHIFT == vcn <<
					vol->cluster_size_bits >>
					PAGE_SHIFT)
				goto fast_descend_into_child_node;
			FUNC31(page);
			FUNC26(page);
			goto descend_into_child_node;
		}
		FUNC23(sb, "Negative child node vcn in directory inode "
				"0x%lx.", dir_ni->mft_no);
		goto unm_err_out;
	}
	/*
	 * No child node present, return -ENOENT, unless we have got a matching
	 * name cached in name in which case return the mft reference
	 * associated with it.
	 */
	if (name) {
		FUNC31(page);
		FUNC26(page);
		return name->mref;
	}
	FUNC22("Entry not found.");
	err = -ENOENT;
unm_err_out:
	FUNC31(page);
	FUNC26(page);
err_out:
	if (!err)
		err = -EIO;
	if (ctx)
		FUNC20(ctx);
	if (m)
		FUNC32(dir_ni);
	if (name) {
		FUNC9(name);
		*res = NULL;
	}
	return FUNC1(err);
dir_err_out:
	FUNC23(sb, "Corrupt directory.  Aborting lookup.");
	goto err_out;
}