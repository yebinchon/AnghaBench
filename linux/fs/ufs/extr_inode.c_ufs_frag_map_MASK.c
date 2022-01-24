#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct ufs_sb_private_info {unsigned int s_fpbshift; int s_apbshift; unsigned int s_sbbase; scalar_t__ s_apbmask; } ;
struct TYPE_8__ {int /*<<< orphan*/ * u2_i_data; int /*<<< orphan*/ * i_data; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __fs64 ;
typedef  int /*<<< orphan*/  __fs32 ;
struct TYPE_10__ {unsigned int s_flags; struct ufs_sb_private_info* s_uspi; } ;
struct TYPE_9__ {int /*<<< orphan*/  bh; int /*<<< orphan*/  key64; int /*<<< orphan*/  key32; } ;
typedef  TYPE_2__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,unsigned long long) ; 
 struct ufs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_7__* FUNC2 (struct super_block*) ; 
 unsigned int UFS_TYPE_MASK ; 
 unsigned int UFS_TYPE_UFS2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_inode_info*,struct buffer_head*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_inode_info*,struct buffer_head*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 struct buffer_head* FUNC8 (struct super_block*,unsigned int) ; 

__attribute__((used)) static u64 FUNC9(struct inode *inode, unsigned offsets[4], int depth)
{
	struct ufs_inode_info *ufsi = FUNC1(inode);
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	u64 mask = (u64) uspi->s_apbmask>>uspi->s_fpbshift;
	int shift = uspi->s_apbshift-uspi->s_fpbshift;
	Indirect chain[4], *q = chain;
	unsigned *p;
	unsigned flags = FUNC2(sb)->s_flags;
	u64 res = 0;

	FUNC0(": uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\n",
		uspi->s_fpbshift, uspi->s_apbmask,
		(unsigned long long)mask);

	if (depth == 0)
		goto no_block;

again:
	p = offsets;

	if ((flags & UFS_TYPE_MASK) == UFS_TYPE_UFS2)
		goto ufs2;

	if (!FUNC6(ufsi, NULL, &ufsi->i_u1.i_data[*p++], chain, q))
		goto changed;
	if (!q->key32)
		goto no_block;
	while (--depth) {
		__fs32 *ptr;
		struct buffer_head *bh;
		unsigned n = *p++;

		bh = FUNC8(sb, uspi->s_sbbase +
				  FUNC4(sb, q->key32) + (n>>shift));
		if (!bh)
			goto no_block;
		ptr = (__fs32 *)bh->b_data + (n & mask);
		if (!FUNC6(ufsi, bh, ptr, chain, ++q))
			goto changed;
		if (!q->key32)
			goto no_block;
	}
	res = FUNC4(sb, q->key32);
	goto found;

ufs2:
	if (!FUNC7(ufsi, NULL, &ufsi->i_u1.u2_i_data[*p++], chain, q))
		goto changed;
	if (!q->key64)
		goto no_block;

	while (--depth) {
		__fs64 *ptr;
		struct buffer_head *bh;
		unsigned n = *p++;

		bh = FUNC8(sb, uspi->s_sbbase +
				  FUNC5(sb, q->key64) + (n>>shift));
		if (!bh)
			goto no_block;
		ptr = (__fs64 *)bh->b_data + (n & mask);
		if (!FUNC7(ufsi, bh, ptr, chain, ++q))
			goto changed;
		if (!q->key64)
			goto no_block;
	}
	res = FUNC5(sb, q->key64);
found:
	res += uspi->s_sbbase;
no_block:
	while (q > chain) {
		FUNC3(q->bh);
		q--;
	}
	return res;

changed:
	while (q > chain) {
		FUNC3(q->bh);
		q--;
	}
	goto again;
}