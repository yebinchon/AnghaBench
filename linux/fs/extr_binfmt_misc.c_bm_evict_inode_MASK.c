#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_private; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  interp_file; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int MISC_FMT_OPEN_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	Node *e = inode->i_private;

	if (e && e->flags & MISC_FMT_OPEN_FILE)
		FUNC1(e->interp_file, NULL);

	FUNC0(inode);
	FUNC2(e);
}