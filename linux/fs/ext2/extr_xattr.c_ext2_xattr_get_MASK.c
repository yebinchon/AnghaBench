#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mb_cache {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext2_xattr_entry {int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; } ;
struct buffer_head {char* b_data; int b_size; int /*<<< orphan*/  b_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  i_file_acl; } ;
struct TYPE_7__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODATA ; 
 int ERANGE ; 
 TYPE_5__* FUNC1 (struct inode*) ; 
 struct ext2_xattr_entry* FUNC2 (struct ext2_xattr_entry*) ; 
 struct ext2_xattr_entry* FUNC3 (struct buffer_head*) ; 
 TYPE_2__* FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct mb_cache*,struct buffer_head*) ; 
 int FUNC13 (int,size_t,char const*,struct ext2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext2_xattr_entry*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,char*,size_t) ; 
 struct buffer_head* FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int
FUNC22(struct inode *inode, int name_index, const char *name,
	       void *buffer, size_t buffer_size)
{
	struct buffer_head *bh = NULL;
	struct ext2_xattr_entry *entry;
	size_t name_len, size;
	char *end;
	int error, not_found;
	struct mb_cache *ea_block_cache = FUNC0(inode);

	FUNC10(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
		  name_index, name, buffer, (long)buffer_size);

	if (name == NULL)
		return -EINVAL;
	name_len = FUNC20(name);
	if (name_len > 255)
		return -ERANGE;

	FUNC8(&FUNC1(inode)->xattr_sem);
	error = -ENODATA;
	if (!FUNC1(inode)->i_file_acl)
		goto cleanup;
	FUNC10(inode, "reading block %d", FUNC1(inode)->i_file_acl);
	bh = FUNC19(inode->i_sb, FUNC1(inode)->i_file_acl);
	error = -EIO;
	if (!bh)
		goto cleanup;
	FUNC9(bh, "b_count=%d, refcount=%d",
		FUNC6(&(bh->b_count)), FUNC17(FUNC4(bh)->h_refcount));
	end = bh->b_data + bh->b_size;
	if (!FUNC15(FUNC4(bh))) {
bad_block:
		FUNC11(inode->i_sb, "ext2_xattr_get",
			"inode %ld: bad block %d", inode->i_ino,
			FUNC1(inode)->i_file_acl);
		error = -EIO;
		goto cleanup;
	}

	/* find named attribute */
	entry = FUNC3(bh);
	while (!FUNC5(entry)) {
		if (!FUNC14(entry, end,
		    inode->i_sb->s_blocksize))
			goto bad_block;

		not_found = FUNC13(name_index, name_len, name,
						 entry);
		if (!not_found)
			goto found;
		if (not_found < 0)
			break;

		entry = FUNC2(entry);
	}
	if (FUNC12(ea_block_cache, bh))
		FUNC10(inode, "cache insert failed");
	error = -ENODATA;
	goto cleanup;
found:
	size = FUNC17(entry->e_value_size);
	if (FUNC12(ea_block_cache, bh))
		FUNC10(inode, "cache insert failed");
	if (buffer) {
		error = -ERANGE;
		if (size > buffer_size)
			goto cleanup;
		/* return value of attribute */
		FUNC18(buffer, bh->b_data + FUNC16(entry->e_value_offs),
			size);
	}
	error = size;

cleanup:
	FUNC7(bh);
	FUNC21(&FUNC1(inode)->xattr_sem);

	return error;
}