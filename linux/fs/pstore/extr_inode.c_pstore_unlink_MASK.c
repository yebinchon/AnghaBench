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
struct pstore_record {TYPE_1__* psi; } ;
struct pstore_private {struct pstore_record* record; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct pstore_private* i_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_mutex; int /*<<< orphan*/  (* erase ) (struct pstore_record*) ;} ;

/* Variables and functions */
 int EPERM ; 
 TYPE_2__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct pstore_record*) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct dentry *dentry)
{
	struct pstore_private *p = FUNC0(dentry)->i_private;
	struct pstore_record *record = p->record;

	if (!record->psi->erase)
		return -EPERM;

	FUNC1(&record->psi->read_mutex);
	record->psi->erase(record);
	FUNC2(&record->psi->read_mutex);

	return FUNC3(dir, dentry);
}