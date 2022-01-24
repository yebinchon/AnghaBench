#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {struct address_space i_btnode_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct nilfs_bmap const*) ; 
 struct buffer_head* FUNC1 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC3(const struct nilfs_bmap *btree,
				     __u64 ptr, struct buffer_head **bhp)
{
	struct address_space *btnc = &FUNC0(btree)->i_btnode_cache;
	struct buffer_head *bh;

	bh = FUNC1(btnc, ptr);
	if (!bh)
		return -ENOMEM;

	FUNC2(bh);
	*bhp = bh;
	return 0;
}