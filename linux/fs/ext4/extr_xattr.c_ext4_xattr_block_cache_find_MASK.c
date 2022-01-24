#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mb_cache_entry {scalar_t__ e_value; } ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_header {int /*<<< orphan*/  h_hash; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct mb_cache* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,unsigned long) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char*,int) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ext4_xattr_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC10 (struct mb_cache*,scalar_t__) ; 
 struct mb_cache_entry* FUNC11 (struct mb_cache*,struct mb_cache_entry*) ; 

__attribute__((used)) static struct buffer_head *
FUNC12(struct inode *inode,
			    struct ext4_xattr_header *header,
			    struct mb_cache_entry **pce)
{
	__u32 hash = FUNC9(header->h_hash);
	struct mb_cache_entry *ce;
	struct mb_cache *ea_block_cache = FUNC1(inode);

	if (!ea_block_cache)
		return NULL;
	if (!header->h_hash)
		return NULL;  /* never share */
	FUNC6(inode, "looking for cached blocks [%x]", (int)hash);
	ce = FUNC10(ea_block_cache, hash);
	while (ce) {
		struct buffer_head *bh;

		bh = FUNC7(inode->i_sb, ce->e_value, REQ_PRIO);
		if (FUNC3(bh)) {
			if (FUNC4(bh) == -ENOMEM)
				return NULL;
			bh = NULL;
			FUNC2(inode, "block %lu read error",
					 (unsigned long)ce->e_value);
		} else if (FUNC8(header, FUNC0(bh)) == 0) {
			*pce = ce;
			return bh;
		}
		FUNC5(bh);
		ce = FUNC11(ea_block_cache, ce);
	}
	return NULL;
}