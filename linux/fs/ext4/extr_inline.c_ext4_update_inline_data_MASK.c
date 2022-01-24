#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct inode {int dummy; } ;
struct ext4_xattr_info {unsigned int value_len; void* value; int /*<<< orphan*/  name; int /*<<< orphan*/  name_index; } ;
struct TYPE_9__ {int /*<<< orphan*/  bh; } ;
struct TYPE_8__ {TYPE_1__* here; int /*<<< orphan*/  not_found; } ;
struct ext4_xattr_ibody_find {TYPE_3__ iloc; TYPE_2__ s; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_10__ {unsigned int i_inline_size; scalar_t__ i_inline_off; } ;
struct TYPE_7__ {int /*<<< orphan*/  e_value_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int ENOMEM ; 
 TYPE_6__* FUNC2 (struct inode*) ; 
 unsigned int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int /*<<< orphan*/  EXT4_XATTR_INDEX_SYSTEM ; 
 int /*<<< orphan*/  EXT4_XATTR_SYSTEM_DATA ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(handle_t *handle, struct inode *inode,
				   unsigned int len)
{
	int error;
	void *value = NULL;
	struct ext4_xattr_ibody_find is = {
		.s = { .not_found = -ENODATA, },
	};
	struct ext4_xattr_info i = {
		.name_index = EXT4_XATTR_INDEX_SYSTEM,
		.name = EXT4_XATTR_SYSTEM_DATA,
	};

	/* If the old space is ok, write the data directly. */
	if (len <= FUNC2(inode)->i_inline_size)
		return 0;

	error = FUNC4(inode, &is.iloc);
	if (error)
		return error;

	error = FUNC9(inode, &i, &is);
	if (error)
		goto out;

	FUNC1(is.s.not_found);

	len -= EXT4_MIN_INLINE_DATA_SIZE;
	value = FUNC14(len, GFP_NOFS);
	if (!value) {
		error = -ENOMEM;
		goto out;
	}

	error = FUNC10(inode, i.name_index, i.name,
				     value, len);
	if (error == -ENODATA)
		goto out;

	FUNC0(is.iloc.bh, "get_write_access");
	error = FUNC5(handle, is.iloc.bh);
	if (error)
		goto out;

	/* Update the xttr entry. */
	i.value = value;
	i.value_len = len;

	error = FUNC11(handle, inode, &i, &is);
	if (error)
		goto out;

	FUNC2(inode)->i_inline_off = (u16)((void *)is.s.here -
				      (void *)FUNC7(&is.iloc));
	FUNC2(inode)->i_inline_size = EXT4_MIN_INLINE_DATA_SIZE +
				FUNC15(is.s.here->e_value_size);
	FUNC8(inode, EXT4_STATE_MAY_INLINE_DATA);
	FUNC12(is.iloc.bh);
	error = FUNC6(handle, inode, &is.iloc);

out:
	FUNC13(value);
	FUNC3(is.iloc.bh);
	return error;
}