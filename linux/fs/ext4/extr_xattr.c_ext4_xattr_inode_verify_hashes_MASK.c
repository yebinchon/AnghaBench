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
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_entry {scalar_t__ e_hash; int /*<<< orphan*/  e_name_len; int /*<<< orphan*/  e_name; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct inode *ea_inode,
			       struct ext4_xattr_entry *entry, void *buffer,
			       size_t size)
{
	u32 hash;

	/* Verify stored hash matches calculated hash. */
	hash = FUNC4(FUNC0(ea_inode->i_sb), buffer, size);
	if (hash != FUNC3(ea_inode))
		return -EFSCORRUPTED;

	if (entry) {
		__le32 e_hash, tmp_data;

		/* Verify entry hash. */
		tmp_data = FUNC1(hash);
		e_hash = FUNC2(entry->e_name, entry->e_name_len,
					       &tmp_data, 1);
		if (e_hash != entry->e_hash)
			return -EFSCORRUPTED;
	}
	return 0;
}