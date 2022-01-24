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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int n_used_nodes; int /*<<< orphan*/  first_free; scalar_t__ n_free_nodes; } ;
struct anode {TYPE_2__ btree; int /*<<< orphan*/  self; int /*<<< orphan*/  magic; } ;
typedef  scalar_t__ anode_secno ;
struct TYPE_3__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 scalar_t__ ANODE_MAGIC ; 
 int /*<<< orphan*/  ANODE_RD_AHEAD ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct super_block*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,scalar_t__) ; 
 struct anode* FUNC4 (struct super_block*,scalar_t__,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct super_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

struct anode *FUNC8(struct super_block *s, anode_secno ano, struct buffer_head **bhp)
{
	struct anode *anode;
	if (FUNC5(s)->sb_chk) if (FUNC2(s, ano, 1, "anode")) return NULL;
	if ((anode = FUNC4(s, ano, bhp, ANODE_RD_AHEAD)))
		if (FUNC5(s)->sb_chk) {
			if (FUNC7(anode->magic) != ANODE_MAGIC) {
				FUNC3(s, "bad magic on anode %08x", ano);
				goto bail;
			}
			if (FUNC7(anode->self) != ano) {
				FUNC3(s, "self pointer invalid on anode %08x", ano);
				goto bail;
			}
			if ((unsigned)anode->btree.n_used_nodes + (unsigned)anode->btree.n_free_nodes !=
			    (FUNC0(&anode->btree) ? 60 : 40)) {
				FUNC3(s, "bad number of nodes in anode %08x", ano);
				goto bail;
			}
			if (FUNC6(anode->btree.first_free) !=
			    8 + anode->btree.n_used_nodes * (FUNC0(&anode->btree) ? 8 : 12)) {
				FUNC3(s, "bad first_free pointer in anode %08x", ano);
				goto bail;
			}
		}
	return anode;
	bail:
	FUNC1(*bhp);
	return NULL;
}