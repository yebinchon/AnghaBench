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
struct xattr_handler {char* name; int /*<<< orphan*/  prefix; scalar_t__ (* list ) (struct dentry*) ;} ;
struct mb_cache {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext2_xattr_entry {size_t e_name_len; char const* e_name; int /*<<< orphan*/  e_name_index; } ;
struct dentry {int dummy; } ;
struct buffer_head {char* b_data; int b_size; int /*<<< orphan*/  b_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  i_file_acl; } ;
struct TYPE_7__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int EIO ; 
 int ERANGE ; 
 TYPE_5__* FUNC1 (struct inode*) ; 
 struct ext2_xattr_entry* FUNC2 (struct ext2_xattr_entry*) ; 
 struct ext2_xattr_entry* FUNC3 (struct buffer_head*) ; 
 TYPE_2__* FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct mb_cache*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext2_xattr_entry*,char*,int /*<<< orphan*/ ) ; 
 struct xattr_handler* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,size_t) ; 
 struct buffer_head* FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t FUNC20 (char const*) ; 
 scalar_t__ FUNC21 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(struct dentry *dentry, char *buffer, size_t buffer_size)
{
	struct inode *inode = FUNC8(dentry);
	struct buffer_head *bh = NULL;
	struct ext2_xattr_entry *entry;
	char *end;
	size_t rest = buffer_size;
	int error;
	struct mb_cache *ea_block_cache = FUNC0(inode);

	FUNC11(inode, "buffer=%p, buffer_size=%ld",
		  buffer, (long)buffer_size);

	FUNC9(&FUNC1(inode)->xattr_sem);
	error = 0;
	if (!FUNC1(inode)->i_file_acl)
		goto cleanup;
	FUNC11(inode, "reading block %d", FUNC1(inode)->i_file_acl);
	bh = FUNC19(inode->i_sb, FUNC1(inode)->i_file_acl);
	error = -EIO;
	if (!bh)
		goto cleanup;
	FUNC10(bh, "b_count=%d, refcount=%d",
		FUNC6(&(bh->b_count)), FUNC17(FUNC4(bh)->h_refcount));
	end = bh->b_data + bh->b_size;
	if (!FUNC16(FUNC4(bh))) {
bad_block:
		FUNC12(inode->i_sb, "ext2_xattr_list",
			"inode %ld: bad block %d", inode->i_ino,
			FUNC1(inode)->i_file_acl);
		error = -EIO;
		goto cleanup;
	}

	/* check the on-disk data structure */
	entry = FUNC3(bh);
	while (!FUNC5(entry)) {
		if (!FUNC14(entry, end,
		    inode->i_sb->s_blocksize))
			goto bad_block;
		entry = FUNC2(entry);
	}
	if (FUNC13(ea_block_cache, bh))
		FUNC11(inode, "cache insert failed");

	/* list the attribute names */
	for (entry = FUNC3(bh); !FUNC5(entry);
	     entry = FUNC2(entry)) {
		const struct xattr_handler *handler =
			FUNC15(entry->e_name_index);

		if (handler && (!handler->list || handler->list(dentry))) {
			const char *prefix = handler->prefix ?: handler->name;
			size_t prefix_len = FUNC20(prefix);
			size_t size = prefix_len + entry->e_name_len + 1;

			if (buffer) {
				if (size > rest) {
					error = -ERANGE;
					goto cleanup;
				}
				FUNC18(buffer, prefix, prefix_len);
				buffer += prefix_len;
				FUNC18(buffer, entry->e_name, entry->e_name_len);
				buffer += entry->e_name_len;
				*buffer++ = 0;
			}
			rest -= size;
		}
	}
	error = buffer_size - rest;  /* total size */

cleanup:
	FUNC7(bh);
	FUNC22(&FUNC1(inode)->xattr_sem);

	return error;
}