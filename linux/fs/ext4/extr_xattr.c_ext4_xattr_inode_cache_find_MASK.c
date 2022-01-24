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
typedef  int /*<<< orphan*/  u32 ;
struct mb_cache_entry {int /*<<< orphan*/  e_value; } ;
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int i_flags; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int EXT4_EA_INODE_FL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_IGET_NORMAL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *,void*,size_t) ; 
 size_t FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 struct mb_cache_entry* FUNC11 (struct mb_cache*,int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC12 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct mb_cache*,struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC15 (void const*,void*,size_t) ; 

__attribute__((used)) static struct inode *
FUNC16(struct inode *inode, const void *value,
			    size_t value_len, u32 hash)
{
	struct inode *ea_inode;
	struct mb_cache_entry *ce;
	struct mb_cache *ea_inode_cache = FUNC0(inode);
	void *ea_data;

	if (!ea_inode_cache)
		return NULL;

	ce = FUNC11(ea_inode_cache, hash);
	if (!ce)
		return NULL;

	ea_data = FUNC4(value_len, GFP_NOFS);
	if (!ea_data) {
		FUNC13(ea_inode_cache, ce);
		return NULL;
	}

	while (ce) {
		ea_inode = FUNC3(inode->i_sb, ce->e_value,
				     EXT4_IGET_NORMAL);
		if (!FUNC2(ea_inode) &&
		    !FUNC9(ea_inode) &&
		    (FUNC1(ea_inode)->i_flags & EXT4_EA_INODE_FL) &&
		    FUNC7(ea_inode) == value_len &&
		    !FUNC5(ea_inode, ea_data, value_len) &&
		    !FUNC6(ea_inode, NULL, ea_data,
						    value_len) &&
		    !FUNC15(value, ea_data, value_len)) {
			FUNC14(ea_inode_cache, ce);
			FUNC13(ea_inode_cache, ce);
			FUNC10(ea_data);
			return ea_inode;
		}

		if (!FUNC2(ea_inode))
			FUNC8(ea_inode);
		ce = FUNC12(ea_inode_cache, ce);
	}
	FUNC10(ea_data);
	return NULL;
}