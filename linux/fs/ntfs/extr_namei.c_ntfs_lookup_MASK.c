#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct qstr {unsigned int len; TYPE_5__* name; int /*<<< orphan*/  hash; } ;
struct TYPE_24__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct inode {TYPE_1__ d_name; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  ntfschar ;
struct TYPE_27__ {int /*<<< orphan*/  sb; } ;
typedef  TYPE_4__ ntfs_volume ;
struct TYPE_28__ {scalar_t__ type; int len; int /*<<< orphan*/  name; } ;
typedef  TYPE_5__ ntfs_name ;
struct TYPE_29__ {scalar_t__ seq_no; } ;
typedef  TYPE_6__ ntfs_inode ;
struct TYPE_30__ {TYPE_9__* attr; } ;
typedef  TYPE_7__ ntfs_attr_search_ctx ;
struct TYPE_25__ {int /*<<< orphan*/  value_offset; int /*<<< orphan*/  value_length; } ;
struct TYPE_26__ {TYPE_2__ resident; } ;
struct TYPE_32__ {TYPE_3__ data; int /*<<< orphan*/  length; scalar_t__ flags; scalar_t__ non_resident; } ;
struct TYPE_31__ {scalar_t__ file_name_type; int file_name_length; int /*<<< orphan*/  file_name; } ;
typedef  int /*<<< orphan*/  MFT_REF ;
typedef  struct inode MFT_RECORD ;
typedef  TYPE_8__ FILE_NAME_ATTR ;
typedef  TYPE_9__ ATTR_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FILE_NAME ; 
 int EIO ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 unsigned long FILE_MFT ; 
 scalar_t__ FILE_NAME_DOS ; 
 scalar_t__ FILE_NAME_WIN32 ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (struct inode*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC11 (struct inode*,struct inode*,struct qstr*) ; 
 struct inode* FUNC12 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC20 (TYPE_6__*) ; 
 TYPE_7__* FUNC21 (TYPE_6__*,struct inode*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 struct inode* FUNC26 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_6__*,int /*<<< orphan*/ *,int,TYPE_5__**) ; 
 int /*<<< orphan*/  ntfs_name_cache ; 
 int FUNC28 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC29 (TYPE_4__*,int /*<<< orphan*/ *,int,unsigned char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_6__*) ; 

__attribute__((used)) static struct dentry *FUNC32(struct inode *dir_ino, struct dentry *dent,
		unsigned int flags)
{
	ntfs_volume *vol = FUNC8(dir_ino->i_sb);
	struct inode *dent_inode;
	ntfschar *uname;
	ntfs_name *name = NULL;
	MFT_REF mref;
	unsigned long dent_ino;
	int uname_len;

	FUNC24("Looking up %pd in directory inode 0x%lx.",
			dent, dir_ino->i_ino);
	/* Convert the name of the dentry to Unicode. */
	uname_len = FUNC28(vol, dent->d_name.name, dent->d_name.len,
			&uname);
	if (uname_len < 0) {
		if (uname_len != -ENAMETOOLONG)
			FUNC25(vol->sb, "Failed to convert name to "
					"Unicode.");
		return FUNC1(uname_len);
	}
	mref = FUNC27(FUNC7(dir_ino), uname, uname_len,
			&name);
	FUNC17(ntfs_name_cache, uname);
	if (!FUNC3(mref)) {
		dent_ino = FUNC4(mref);
		FUNC24("Found inode 0x%lx. Calling ntfs_iget.", dent_ino);
		dent_inode = FUNC26(vol->sb, dent_ino);
		if (!FUNC2(dent_inode)) {
			/* Consistency check. */
			if (FUNC15(dent_inode) || FUNC6(mref) ==
					FUNC7(dent_inode)->seq_no ||
					dent_ino == FILE_MFT) {
				/* Perfect WIN32/POSIX match. -- Case 1. */
				if (!name) {
					FUNC24("Done.  (Case 1.)");
					return FUNC12(dent_inode, dent);
				}
				/*
				 * We are too indented.  Handle imperfect
				 * matches and short file names further below.
				 */
				goto handle_name;
			}
			FUNC25(vol->sb, "Found stale reference to inode "
					"0x%lx (reference sequence number = "
					"0x%x, inode sequence number = 0x%x), "
					"returning -EIO. Run chkdsk.",
					dent_ino, FUNC6(mref),
					FUNC7(dent_inode)->seq_no);
			FUNC14(dent_inode);
			dent_inode = FUNC1(-EIO);
		} else
			FUNC25(vol->sb, "ntfs_iget(0x%lx) failed with "
					"error code %li.", dent_ino,
					FUNC9(dent_inode));
		FUNC16(name);
		/* Return the error code. */
		return FUNC0(dent_inode);
	}
	/* It is guaranteed that @name is no longer allocated at this point. */
	if (FUNC5(mref) == -ENOENT) {
		FUNC24("Entry was not found, adding negative dentry.");
		/* The dcache will handle negative entries. */
		FUNC10(dent, NULL);
		FUNC24("Done.");
		return NULL;
	}
	FUNC25(vol->sb, "ntfs_lookup_ino_by_name() failed with error "
			"code %i.", -FUNC5(mref));
	return FUNC1(FUNC5(mref));
	// TODO: Consider moving this lot to a separate function! (AIA)
handle_name:
   {
	MFT_RECORD *m;
	ntfs_attr_search_ctx *ctx;
	ntfs_inode *ni = FUNC7(dent_inode);
	int err;
	struct qstr nls_name;

	nls_name.name = NULL;
	if (name->type != FILE_NAME_DOS) {			/* Case 2. */
		FUNC24("Case 2.");
		nls_name.len = (unsigned)FUNC29(vol,
				(ntfschar*)&name->name, name->len,
				(unsigned char**)&nls_name.name, 0);
		FUNC16(name);
	} else /* if (name->type == FILE_NAME_DOS) */ {		/* Case 3. */
		FILE_NAME_ATTR *fn;

		FUNC24("Case 3.");
		FUNC16(name);

		/* Find the WIN32 name corresponding to the matched DOS name. */
		ni = FUNC7(dent_inode);
		m = FUNC20(ni);
		if (FUNC2(m)) {
			err = FUNC9(m);
			m = NULL;
			ctx = NULL;
			goto err_out;
		}
		ctx = FUNC21(ni, m);
		if (FUNC30(!ctx)) {
			err = -ENOMEM;
			goto err_out;
		}
		do {
			ATTR_RECORD *a;
			u32 val_len;

			err = FUNC22(AT_FILE_NAME, NULL, 0, 0, 0,
					NULL, 0, ctx);
			if (FUNC30(err)) {
				FUNC25(vol->sb, "Inode corrupt: No WIN32 "
						"namespace counterpart to DOS "
						"file name. Run chkdsk.");
				if (err == -ENOENT)
					err = -EIO;
				goto err_out;
			}
			/* Consistency checks. */
			a = ctx->attr;
			if (a->non_resident || a->flags)
				goto eio_err_out;
			val_len = FUNC19(a->data.resident.value_length);
			if (FUNC18(a->data.resident.value_offset) +
					val_len > FUNC19(a->length))
				goto eio_err_out;
			fn = (FILE_NAME_ATTR*)((u8*)ctx->attr + FUNC18(
					ctx->attr->data.resident.value_offset));
			if ((u32)(fn->file_name_length * sizeof(ntfschar) +
					sizeof(FILE_NAME_ATTR)) > val_len)
				goto eio_err_out;
		} while (fn->file_name_type != FILE_NAME_WIN32);

		/* Convert the found WIN32 name to current NLS code page. */
		nls_name.len = (unsigned)FUNC29(vol,
				(ntfschar*)&fn->file_name, fn->file_name_length,
				(unsigned char**)&nls_name.name, 0);

		FUNC23(ctx);
		FUNC31(ni);
	}
	m = NULL;
	ctx = NULL;

	/* Check if a conversion error occurred. */
	if ((signed)nls_name.len < 0) {
		err = (signed)nls_name.len;
		goto err_out;
	}
	nls_name.hash = FUNC13(dent, nls_name.name, nls_name.len);

	dent = FUNC11(dent, dent_inode, &nls_name);
	FUNC16(nls_name.name);
	return dent;

eio_err_out:
	FUNC25(vol->sb, "Illegal file name attribute. Run chkdsk.");
	err = -EIO;
err_out:
	if (ctx)
		FUNC23(ctx);
	if (m)
		FUNC31(ni);
	FUNC14(dent_inode);
	FUNC25(vol->sb, "Failed, returning error code %i.", err);
	return FUNC1(err);
   }
}