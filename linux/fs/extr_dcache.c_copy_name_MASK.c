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
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct external_name {TYPE_2__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_iname; } ;
struct TYPE_6__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct external_name* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct external_name*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__ u ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dentry *dentry, struct dentry *target)
{
	struct external_name *old_name = NULL;
	if (FUNC7(FUNC2(dentry)))
		old_name = FUNC3(dentry);
	if (FUNC7(FUNC2(target))) {
		FUNC1(&FUNC3(target)->u.count);
		dentry->d_name = target->d_name;
	} else {
		FUNC6(dentry->d_iname, target->d_name.name,
				target->d_name.len + 1);
		dentry->d_name.name = dentry->d_iname;
		dentry->d_name.hash_len = target->d_name.hash_len;
	}
	if (old_name && FUNC5(FUNC0(&old_name->u.count)))
		FUNC4(old_name, u.head);
}