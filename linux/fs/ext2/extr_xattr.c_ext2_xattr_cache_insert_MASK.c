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
struct mb_cache {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  h_hash; } ;
struct TYPE_3__ {int /*<<< orphan*/  c_entry_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,char*,int) ; 
 TYPE_1__* ext2_xattr_cache ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mb_cache*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct mb_cache *cache, struct buffer_head *bh)
{
	__u32 hash = FUNC3(FUNC0(bh)->h_hash);
	int error;

	error = FUNC4(cache, GFP_NOFS, hash, bh->b_blocknr,
				      true);
	if (error) {
		if (error == -EBUSY) {
			FUNC2(bh, "already in cache (%d cache entries)",
				FUNC1(&ext2_xattr_cache->c_entry_count));
			error = 0;
		}
	} else
		FUNC2(bh, "inserting [%x]", (int)hash);
	return error;
}