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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*,void const*,size_t,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(handle_t *handle, struct inode *inode,
					  const void *value, size_t value_len,
					  struct inode **ret_inode)
{
	struct inode *ea_inode;
	u32 hash;
	int err;

	hash = FUNC7(FUNC1(inode->i_sb), value, value_len);
	ea_inode = FUNC4(inode, value, value_len, hash);
	if (ea_inode) {
		err = FUNC8(handle, ea_inode);
		if (err) {
			FUNC10(ea_inode);
			return err;
		}

		*ret_inode = ea_inode;
		return 0;
	}

	/* Create an inode for the EA value */
	ea_inode = FUNC5(handle, inode, hash);
	if (FUNC2(ea_inode))
		return FUNC3(ea_inode);

	err = FUNC9(handle, ea_inode, value, value_len);
	if (err) {
		FUNC6(handle, ea_inode);
		FUNC10(ea_inode);
		return err;
	}

	if (FUNC0(inode))
		FUNC11(FUNC0(inode), GFP_NOFS, hash,
				      ea_inode->i_ino, true /* reusable */);

	*ret_inode = ea_inode;
	return 0;
}