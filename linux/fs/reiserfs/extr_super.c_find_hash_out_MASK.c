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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct reiserfs_dir_entry {int de_entry_num; int /*<<< orphan*/  de_namelen; int /*<<< orphan*/  de_name; struct reiserfs_de_head* de_deh; } ;
struct reiserfs_de_head {int dummy; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ DEFAULT_HASH ; 
 scalar_t__ DOT_DOT_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IO_ERROR ; 
 int NAME_NOT_FOUND ; 
 scalar_t__ R5_HASH ; 
 scalar_t__ TEA_HASH ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 scalar_t__ UNSET_HASH ; 
 scalar_t__ YURA_HASH ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct reiserfs_de_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,char*) ; 
 int FUNC11 (struct super_block*,struct cpu_key*,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct reiserfs_dir_entry*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __u32 FUNC14(struct super_block *s)
{
	int retval;
	struct inode *inode;
	struct cpu_key key;
	FUNC1(path);
	struct reiserfs_dir_entry de;
	struct reiserfs_de_head *deh;
	__u32 hash = DEFAULT_HASH;
	__u32 deh_hashval, teahash, r5hash, yurahash;

	inode = FUNC2(s->s_root);

	FUNC5(&key, inode, ~0, TYPE_DIRENTRY, 3);
	retval = FUNC11(s, &key, &path, &de);
	if (retval == IO_ERROR) {
		FUNC6(&path);
		return UNSET_HASH;
	}
	if (retval == NAME_NOT_FOUND)
		de.de_entry_num--;

	FUNC12(&de);
	deh = de.de_deh + de.de_entry_num;

	if (FUNC3(deh) == DOT_DOT_OFFSET) {
		/* allow override in this case */
		if (FUNC9(s))
			hash = YURA_HASH;
		FUNC8(s, "FS seems to be empty, autodetect is using the default hash\n");
		goto out;
	}

	deh_hashval = FUNC0(FUNC3(deh));
	r5hash = FUNC0(FUNC7(de.de_name, de.de_namelen));
	teahash = FUNC0(FUNC4(de.de_name, de.de_namelen));
	yurahash = FUNC0(FUNC13(de.de_name, de.de_namelen));

	if ((teahash == r5hash && deh_hashval == r5hash) ||
	    (teahash == yurahash && deh_hashval == yurahash) ||
	    (r5hash == yurahash && deh_hashval == yurahash)) {
		FUNC10(s, "reiserfs-2506",
				 "Unable to automatically detect hash "
				 "function. Please mount with -o "
				 "hash={tea,rupasov,r5}");
		hash = UNSET_HASH;
		goto out;
	}

	if (deh_hashval == yurahash)
		hash = YURA_HASH;
	else if (deh_hashval == teahash)
		hash = TEA_HASH;
	else if (deh_hashval == r5hash)
		hash = R5_HASH;
	else {
		FUNC10(s, "reiserfs-2506",
				 "Unrecognised hash function");
		hash = UNSET_HASH;
	}
out:
	FUNC6(&path);
	return hash;
}