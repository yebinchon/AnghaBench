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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct dnode {int* dirent; void* self; void* first_free; void* magic; } ;
typedef  int /*<<< orphan*/  secno ;
typedef  int dnode_secno ;

/* Variables and functions */
 int DNODE_MAGIC ; 
 scalar_t__ FREE_DNODES_ADD ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 struct dnode* FUNC4 (struct super_block*,int,struct quad_buffer_head*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode*,int /*<<< orphan*/ ,int) ; 

struct dnode *FUNC7(struct super_block *s, secno near,
			 dnode_secno *dno, struct quad_buffer_head *qbh)
{
	struct dnode *d;
	if (FUNC5(s) > FREE_DNODES_ADD) {
		if (!(*dno = FUNC0(s, near)))
			if (!(*dno = FUNC2(s, near, 4, 0))) return NULL;
	} else {
		if (!(*dno = FUNC2(s, near, 4, 0)))
			if (!(*dno = FUNC0(s, near))) return NULL;
	}
	if (!(d = FUNC4(s, *dno, qbh))) {
		FUNC3(s, *dno);
		return NULL;
	}
	FUNC6(d, 0, 2048);
	d->magic = FUNC1(DNODE_MAGIC);
	d->first_free = FUNC1(52);
	d->dirent[0] = 32;
	d->dirent[2] = 8;
	d->dirent[30] = 1;
	d->dirent[31] = 255;
	d->self = FUNC1(*dno);
	return d;
}