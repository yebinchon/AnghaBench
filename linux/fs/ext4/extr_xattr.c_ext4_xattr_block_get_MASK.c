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
typedef  int u16 ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; scalar_t__ e_value_inum; int /*<<< orphan*/  e_value_size; } ;
struct buffer_head {int b_size; void* b_data; int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_3__ {scalar_t__ i_file_acl; } ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct buffer_head*) ; 
 struct mb_cache* FUNC2 (struct inode*) ; 
 int ENODATA ; 
 int ERANGE ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 size_t EXT4_XATTR_SIZE_MAX ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,char*,unsigned long long,...) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mb_cache*,struct buffer_head*) ; 
 int FUNC12 (struct inode*,struct buffer_head*) ; 
 int FUNC13 (struct inode*,struct ext4_xattr_entry*,void*,size_t) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,void*,size_t) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (struct inode*,struct ext4_xattr_entry**,void*,int,char const*,int) ; 

__attribute__((used)) static int
FUNC19(struct inode *inode, int name_index, const char *name,
		     void *buffer, size_t buffer_size)
{
	struct buffer_head *bh = NULL;
	struct ext4_xattr_entry *entry;
	size_t size;
	void *end;
	int error;
	struct mb_cache *ea_block_cache = FUNC2(inode);

	FUNC9(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
		  name_index, name, buffer, (long)buffer_size);

	if (!FUNC3(inode)->i_file_acl)
		return -ENODATA;
	FUNC9(inode, "reading block %llu",
		  (unsigned long long)FUNC3(inode)->i_file_acl);
	bh = FUNC10(inode->i_sb, FUNC3(inode)->i_file_acl, REQ_PRIO);
	if (FUNC4(bh))
		return FUNC5(bh);
	FUNC8(bh, "b_count=%d, refcount=%d",
		FUNC6(&(bh->b_count)), FUNC15(FUNC1(bh)->h_refcount));
	error = FUNC12(inode, bh);
	if (error)
		goto cleanup;
	FUNC11(ea_block_cache, bh);
	entry = FUNC0(bh);
	end = bh->b_data + bh->b_size;
	error = FUNC18(inode, &entry, end, name_index, name, 1);
	if (error)
		goto cleanup;
	size = FUNC15(entry->e_value_size);
	error = -ERANGE;
	if (FUNC17(size > EXT4_XATTR_SIZE_MAX))
		goto cleanup;
	if (buffer) {
		if (size > buffer_size)
			goto cleanup;
		if (entry->e_value_inum) {
			error = FUNC13(inode, entry, buffer,
						     size);
			if (error)
				goto cleanup;
		} else {
			u16 offset = FUNC14(entry->e_value_offs);
			void *p = bh->b_data + offset;

			if (FUNC17(p + size > end))
				goto cleanup;
			FUNC16(buffer, p, size);
		}
	}
	error = size;

cleanup:
	FUNC7(bh);
	return error;
}