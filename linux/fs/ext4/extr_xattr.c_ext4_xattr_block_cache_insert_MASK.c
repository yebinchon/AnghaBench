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
struct mb_cache {int dummy; } ;
struct ext4_xattr_header {int /*<<< orphan*/  h_refcount; int /*<<< orphan*/  h_hash; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 struct ext4_xattr_header* FUNC0 (struct buffer_head*) ; 
 int EBUSY ; 
 scalar_t__ EXT4_XATTR_REFCOUNT_MAX ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mb_cache*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mb_cache *ea_block_cache,
			      struct buffer_head *bh)
{
	struct ext4_xattr_header *header = FUNC0(bh);
	__u32 hash = FUNC2(header->h_hash);
	int reusable = FUNC2(header->h_refcount) <
		       EXT4_XATTR_REFCOUNT_MAX;
	int error;

	if (!ea_block_cache)
		return;
	error = FUNC3(ea_block_cache, GFP_NOFS, hash,
				      bh->b_blocknr, reusable);
	if (error) {
		if (error == -EBUSY)
			FUNC1(bh, "already in cache");
	} else
		FUNC1(bh, "inserting [%x]", (int)hash);
}