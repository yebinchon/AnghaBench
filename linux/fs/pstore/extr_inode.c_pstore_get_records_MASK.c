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
struct pstore_info {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* s_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pstore_info* psinfo ; 
 int /*<<< orphan*/  FUNC3 (struct pstore_info*,struct dentry*,int) ; 
 TYPE_1__* pstore_sb ; 

void FUNC4(int quiet)
{
	struct pstore_info *psi = psinfo;
	struct dentry *root;

	if (!psi || !pstore_sb)
		return;

	root = pstore_sb->s_root;

	FUNC1(FUNC0(root));
	FUNC3(psi, root, quiet);
	FUNC2(FUNC0(root));
}