#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_20__ {TYPE_6__* base_ntfs_ino; } ;
struct TYPE_24__ {scalar_t__ type; int name_len; int initialized_size; int /*<<< orphan*/  size_lock; int /*<<< orphan*/  name; TYPE_2__ ext; } ;
typedef  TYPE_6__ ntfs_inode ;
struct TYPE_25__ {TYPE_5__* attr; } ;
typedef  TYPE_7__ ntfs_attr_search_ctx ;
typedef  int loff_t ;
struct TYPE_21__ {int /*<<< orphan*/  value_offset; int /*<<< orphan*/  value_length; } ;
struct TYPE_22__ {TYPE_3__ resident; } ;
struct TYPE_23__ {TYPE_4__ data; } ;
struct TYPE_19__ {struct inode* host; } ;
typedef  int /*<<< orphan*/  MFT_RECORD ;

/* Variables and functions */
 scalar_t__ AT_DATA ; 
 scalar_t__ AT_INDEX_ALLOCATION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int EACCES ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*) ; 
 TYPE_6__* FUNC6 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC20 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int FUNC24 (struct page*) ; 
 int FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC31 (struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC32(struct file *file, struct page *page)
{
	loff_t i_size;
	struct inode *vi;
	ntfs_inode *ni, *base_ni;
	u8 *addr;
	ntfs_attr_search_ctx *ctx;
	MFT_RECORD *mrec;
	unsigned long flags;
	u32 attr_len;
	int err = 0;

retry_readpage:
	FUNC0(!FUNC8(page));
	vi = page->mapping->host;
	i_size = FUNC12(vi);
	/* Is the page fully outside i_size? (truncate in progress) */
	if (FUNC28(page->index >= (i_size + PAGE_SIZE - 1) >>
			PAGE_SHIFT)) {
		FUNC31(page, 0, PAGE_SIZE);
		FUNC23("Read outside i_size - truncated?");
		goto done;
	}
	/*
	 * This can potentially happen because we clear PageUptodate() during
	 * ntfs_writepage() of MstProtected() attributes.
	 */
	if (FUNC9(page)) {
		FUNC29(page);
		return 0;
	}
	ni = FUNC6(vi);
	/*
	 * Only $DATA attributes can be encrypted and only unnamed $DATA
	 * attributes can be compressed.  Index root can have the flags set but
	 * this means to create compressed/encrypted files, not that the
	 * attribute is compressed/encrypted.  Note we need to check for
	 * AT_INDEX_ALLOCATION since this is the type of both directory and
	 * index inodes.
	 */
	if (ni->type != AT_INDEX_ALLOCATION) {
		/* If attribute is encrypted, deny access, just like NT4. */
		if (FUNC4(ni)) {
			FUNC0(ni->type != AT_DATA);
			err = -EACCES;
			goto err_out;
		}
		/* Compressed data streams are handled in compress.c. */
		if (FUNC5(ni) && FUNC3(ni)) {
			FUNC0(ni->type != AT_DATA);
			FUNC0(ni->name_len);
			return FUNC25(page);
		}
	}
	/* NInoNonResident() == NInoIndexAllocPresent() */
	if (FUNC5(ni)) {
		/* Normal, non-resident data stream. */
		return FUNC24(page);
	}
	/*
	 * Attribute is resident, implying it is not compressed or encrypted.
	 * This also means the attribute is smaller than an mft record and
	 * hence smaller than a page, so can simply zero out any pages with
	 * index above 0.  Note the attribute can actually be marked compressed
	 * but if it is resident the actual data is not compressed so we are
	 * ok to ignore the compressed flag here.
	 */
	if (FUNC28(page->index > 0)) {
		FUNC31(page, 0, PAGE_SIZE);
		goto done;
	}
	if (!FUNC2(ni))
		base_ni = ni;
	else
		base_ni = ni->ext.base_ntfs_ino;
	/* Map, pin, and lock the mft record. */
	mrec = FUNC17(base_ni);
	if (FUNC1(mrec)) {
		err = FUNC7(mrec);
		goto err_out;
	}
	/*
	 * If a parallel write made the attribute non-resident, drop the mft
	 * record and retry the readpage.
	 */
	if (FUNC28(FUNC5(ni))) {
		FUNC30(base_ni);
		goto retry_readpage;
	}
	ctx = FUNC20(base_ni, mrec);
	if (FUNC28(!ctx)) {
		err = -ENOMEM;
		goto unm_err_out;
	}
	err = FUNC21(ni->type, ni->name, ni->name_len,
			CASE_SENSITIVE, 0, NULL, 0, ctx);
	if (FUNC28(err))
		goto put_unm_err_out;
	attr_len = FUNC16(ctx->attr->data.resident.value_length);
	FUNC26(&ni->size_lock, flags);
	if (FUNC28(attr_len > ni->initialized_size))
		attr_len = ni->initialized_size;
	i_size = FUNC12(vi);
	FUNC27(&ni->size_lock, flags);
	if (FUNC28(attr_len > i_size)) {
		/* Race with shrinking truncate. */
		attr_len = i_size;
	}
	addr = FUNC13(page);
	/* Copy the data to the page. */
	FUNC18(addr, (u8*)ctx->attr +
			FUNC15(ctx->attr->data.resident.value_offset),
			attr_len);
	/* Zero the remainder of the page. */
	FUNC19(addr + attr_len, 0, PAGE_SIZE - attr_len);
	FUNC11(page);
	FUNC14(addr);
put_unm_err_out:
	FUNC22(ctx);
unm_err_out:
	FUNC30(base_ni);
done:
	FUNC10(page);
err_out:
	FUNC29(page);
	return err;
}