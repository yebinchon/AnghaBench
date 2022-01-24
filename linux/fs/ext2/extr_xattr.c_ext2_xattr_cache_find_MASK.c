#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mb_cache_entry {scalar_t__ e_value; int /*<<< orphan*/  e_hash_list; } ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext2_xattr_header {int /*<<< orphan*/  h_hash; } ;
struct buffer_head {int /*<<< orphan*/  b_count; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_3__ {int /*<<< orphan*/  h_refcount; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 scalar_t__ EXT2_XATTR_REFCOUNT_MAX ; 
 TYPE_1__* FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ext2_xattr_header*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 struct mb_cache_entry* FUNC11 (struct mb_cache*,scalar_t__) ; 
 struct mb_cache_entry* FUNC12 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct mb_cache*,struct mb_cache_entry*) ; 
 struct buffer_head* FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC17(struct inode *inode, struct ext2_xattr_header *header)
{
	__u32 hash = FUNC9(header->h_hash);
	struct mb_cache_entry *ce;
	struct mb_cache *ea_block_cache = FUNC0(inode);

	if (!header->h_hash)
		return NULL;  /* never share */
	FUNC5(inode, "looking for cached blocks [%x]", (int)hash);
again:
	ce = FUNC11(ea_block_cache, hash);
	while (ce) {
		struct buffer_head *bh;

		bh = FUNC15(inode->i_sb, ce->e_value);
		if (!bh) {
			FUNC6(inode->i_sb, "ext2_xattr_cache_find",
				"inode %ld: block %ld read error",
				inode->i_ino, (unsigned long) ce->e_value);
		} else {
			FUNC10(bh);
			/*
			 * We have to be careful about races with freeing or
			 * rehashing of xattr block. Once we hold buffer lock
			 * xattr block's state is stable so we can check
			 * whether the block got freed / rehashed or not.
			 * Since we unhash mbcache entry under buffer lock when
			 * freeing / rehashing xattr block, checking whether
			 * entry is still hashed is reliable.
			 */
			if (FUNC8(&ce->e_hash_list)) {
				FUNC13(ea_block_cache, ce);
				FUNC16(bh);
				FUNC3(bh);
				goto again;
			} else if (FUNC9(FUNC1(bh)->h_refcount) >
				   EXT2_XATTR_REFCOUNT_MAX) {
				FUNC5(inode, "block %ld refcount %d>%d",
					  (unsigned long) ce->e_value,
					  FUNC9(FUNC1(bh)->h_refcount),
					  EXT2_XATTR_REFCOUNT_MAX);
			} else if (!FUNC7(header, FUNC1(bh))) {
				FUNC4(bh, "b_count=%d",
					  FUNC2(&(bh->b_count)));
				FUNC14(ea_block_cache, ce);
				FUNC13(ea_block_cache, ce);
				return bh;
			}
			FUNC16(bh);
			FUNC3(bh);
		}
		ce = FUNC12(ea_block_cache, ce);
	}
	return NULL;
}