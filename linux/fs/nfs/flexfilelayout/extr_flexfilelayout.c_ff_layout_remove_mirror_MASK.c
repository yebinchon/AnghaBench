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
struct nfs4_ff_layout_mirror {TYPE_1__* layout; int /*<<< orphan*/  mirrors; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct inode* plh_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nfs4_ff_layout_mirror *mirror)
{
	struct inode *inode;
	if (mirror->layout == NULL)
		return;
	inode = mirror->layout->plh_inode;
	FUNC1(&inode->i_lock);
	FUNC0(&mirror->mirrors);
	FUNC2(&inode->i_lock);
	mirror->layout = NULL;
}