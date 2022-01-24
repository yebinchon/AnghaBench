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
struct super_block {int dummy; } ;
struct TYPE_2__ {int n_free_nodes; void* first_free; } ;
struct fnode {TYPE_1__ btree; void* ea_offs; int /*<<< orphan*/  magic; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  secno ;
typedef  int /*<<< orphan*/  fnode_secno ;

/* Variables and functions */
 int /*<<< orphan*/  FNODE_ALLOC_FWD ; 
 int /*<<< orphan*/  FNODE_MAGIC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct fnode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (struct fnode*,int /*<<< orphan*/ ,int) ; 

struct fnode *FUNC6(struct super_block *s, secno near, fnode_secno *fno,
			  struct buffer_head **bh)
{
	struct fnode *f;
	if (!(*fno = FUNC2(s, near, 1, FNODE_ALLOC_FWD))) return NULL;
	if (!(f = FUNC4(s, *fno, bh))) {
		FUNC3(s, *fno, 1);
		return NULL;
	}	
	FUNC5(f, 0, 512);
	f->magic = FUNC1(FNODE_MAGIC);
	f->ea_offs = FUNC0(0xc4);
	f->btree.n_free_nodes = 8;
	f->btree.first_free = FUNC0(8);
	return f;
}