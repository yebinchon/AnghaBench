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
struct uprobe_consumer {int /*<<< orphan*/  ret_handler; int /*<<< orphan*/  handler; } ;
struct uprobe {int /*<<< orphan*/  register_rwsem; } ;
struct inode {TYPE_2__* i_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* a_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  readpage; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct uprobe*) ; 
 int FUNC1 (struct uprobe*) ; 
 int /*<<< orphan*/  FUNC2 (struct uprobe*,struct uprobe_consumer*) ; 
 struct uprobe* FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uprobe*,struct uprobe_consumer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uprobe*) ; 
 int FUNC9 (struct uprobe*,struct uprobe_consumer*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct uprobe*) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, loff_t offset,
			     loff_t ref_ctr_offset, struct uprobe_consumer *uc)
{
	struct uprobe *uprobe;
	int ret;

	/* Uprobe must have at least one set consumer */
	if (!uc->handler && !uc->ret_handler)
		return -EINVAL;

	/* copy_insn() uses read_mapping_page() or shmem_read_mapping_page() */
	if (!inode->i_mapping->a_ops->readpage && !FUNC10(inode->i_mapping))
		return -EIO;
	/* Racy, just to catch the obvious mistakes */
	if (offset > FUNC6(inode))
		return -EINVAL;

 retry:
	uprobe = FUNC3(inode, offset, ref_ctr_offset);
	if (!uprobe)
		return -ENOMEM;
	if (FUNC0(uprobe))
		return FUNC1(uprobe);

	/*
	 * We can race with uprobe_unregister()->delete_uprobe().
	 * Check uprobe_is_active() and retry if it is false.
	 */
	FUNC5(&uprobe->register_rwsem);
	ret = -EAGAIN;
	if (FUNC7(FUNC13(uprobe))) {
		FUNC4(uprobe, uc);
		ret = FUNC9(uprobe, uc);
		if (ret)
			FUNC2(uprobe, uc);
	}
	FUNC12(&uprobe->register_rwsem);
	FUNC8(uprobe);

	if (FUNC11(ret == -EAGAIN))
		goto retry;
	return ret;
}