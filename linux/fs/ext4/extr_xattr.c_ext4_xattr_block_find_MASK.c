#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_xattr_info {int /*<<< orphan*/  name; int /*<<< orphan*/  name_index; scalar_t__ value_len; int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int not_found; scalar_t__ end; int /*<<< orphan*/  here; int /*<<< orphan*/  first; TYPE_8__* base; } ;
struct ext4_xattr_block_find {TYPE_1__ s; TYPE_2__* bh; } ;
struct TYPE_14__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_13__ {scalar_t__ i_file_acl; } ;
struct TYPE_12__ {scalar_t__ b_size; scalar_t__ b_data; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_8__* FUNC1 (TYPE_2__*) ; 
 int ENODATA ; 
 TYPE_7__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 TYPE_2__* FUNC8 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, struct ext4_xattr_info *i,
		      struct ext4_xattr_block_find *bs)
{
	struct super_block *sb = inode->i_sb;
	int error;

	FUNC7(inode, "name=%d.%s, value=%p, value_len=%ld",
		  i->name_index, i->name, i->value, (long)i->value_len);

	if (FUNC2(inode)->i_file_acl) {
		/* The inode already has an extended attribute block. */
		bs->bh = FUNC8(sb, FUNC2(inode)->i_file_acl, REQ_PRIO);
		if (FUNC3(bs->bh))
			return FUNC4(bs->bh);
		FUNC6(bs->bh, "b_count=%d, refcount=%d",
			FUNC5(&(bs->bh->b_count)),
			FUNC10(FUNC1(bs->bh)->h_refcount));
		error = FUNC9(inode, bs->bh);
		if (error)
			return error;
		/* Find the named attribute. */
		bs->s.base = FUNC1(bs->bh);
		bs->s.first = FUNC0(bs->bh);
		bs->s.end = bs->bh->b_data + bs->bh->b_size;
		bs->s.here = bs->s.first;
		error = FUNC11(inode, &bs->s.here, bs->s.end,
					 i->name_index, i->name, 1);
		if (error && error != -ENODATA)
			return error;
		bs->s.not_found = error;
	}
	return 0;
}