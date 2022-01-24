#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aa_profile {TYPE_1__** dents; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mtime; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_3__* d_inode; } ;

/* Variables and functions */
 int AAFS_PROF_SIZEOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct aa_profile*) ; 

void FUNC4(struct aa_profile *old,
				  struct aa_profile *new)
{
	int i;

	FUNC0(!old);
	FUNC0(!new);
	FUNC0(!FUNC2(&FUNC3(old)->lock));

	for (i = 0; i < AAFS_PROF_SIZEOF; i++) {
		new->dents[i] = old->dents[i];
		if (new->dents[i])
			new->dents[i]->d_inode->i_mtime = FUNC1(new->dents[i]->d_inode);
		old->dents[i] = NULL;
	}
}