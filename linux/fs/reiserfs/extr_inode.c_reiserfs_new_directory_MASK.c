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
struct treepath {int dummy; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct TYPE_3__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct item_head {TYPE_1__ ih_key; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DOT_OFFSET ; 
 int EEXIST ; 
 int EIO ; 
 int EMPTY_DIR_SIZE ; 
 int EMPTY_DIR_SIZE_V1 ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int IO_ERROR ; 
 int ITEM_FOUND ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct item_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*) ; 
 int FUNC10 (struct reiserfs_transaction_handle*,struct treepath*,struct cpu_key*,struct item_head*,struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*,char*,TYPE_1__*) ; 
 int FUNC12 (struct super_block*,struct cpu_key*,struct treepath*) ; 

__attribute__((used)) static int FUNC13(struct reiserfs_transaction_handle *th,
				  struct inode *inode,
				  struct item_head *ih, struct treepath *path,
				  struct inode *dir)
{
	struct super_block *sb = th->t_super;
	char empty_dir[EMPTY_DIR_SIZE];
	char *body = empty_dir;
	struct cpu_key key;
	int retval;

	FUNC0(!th->t_trans_id);

	FUNC2(&key, KEY_FORMAT_3_5, FUNC3(ih->ih_key.k_dir_id),
		      FUNC3(ih->ih_key.k_objectid), DOT_OFFSET,
		      TYPE_DIRENTRY, 3 /*key length */ );

	/*
	 * compose item head for new item. Directories consist of items of
	 * old type (ITEM_VERSION_1). Do not set key (second arg is 0), it
	 * is done by reiserfs_new_inode
	 */
	if (FUNC7(sb)) {
		FUNC6(ih, NULL, KEY_FORMAT_3_5, DOT_OFFSET,
				  TYPE_DIRENTRY, EMPTY_DIR_SIZE_V1, 2);

		FUNC5(body, ih->ih_key.k_dir_id,
				       ih->ih_key.k_objectid,
				       FUNC1(dir)->k_dir_id,
				       FUNC1(dir)->k_objectid);
	} else {
		FUNC6(ih, NULL, KEY_FORMAT_3_5, DOT_OFFSET,
				  TYPE_DIRENTRY, EMPTY_DIR_SIZE, 2);

		FUNC4(body, ih->ih_key.k_dir_id,
				    ih->ih_key.k_objectid,
				    FUNC1(dir)->k_dir_id,
				    FUNC1(dir)->k_objectid);
	}

	/* look for place in the tree for new item */
	retval = FUNC12(sb, &key, path);
	if (retval == IO_ERROR) {
		FUNC9(sb, "vs-13080",
			       "i/o failure occurred creating new directory");
		return -EIO;
	}
	if (retval == ITEM_FOUND) {
		FUNC8(path);
		FUNC11(sb, "vs-13070",
				 "object with this key exists (%k)",
				 &(ih->ih_key));
		return -EEXIST;
	}

	/* insert item, that is empty directory item */
	return FUNC10(th, path, &key, ih, inode, body);
}