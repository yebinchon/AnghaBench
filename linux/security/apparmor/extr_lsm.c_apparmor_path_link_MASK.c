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
struct path {int dummy; } ;
struct dentry {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aa_label*,struct dentry*,struct path const*,struct dentry*) ; 
 struct aa_label* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*) ; 

__attribute__((used)) static int FUNC5(struct dentry *old_dentry, const struct path *new_dir,
			      struct dentry *new_dentry)
{
	struct aa_label *label;
	int error = 0;

	if (!FUNC3(old_dentry))
		return 0;

	label = FUNC1();
	if (!FUNC4(label))
		error = FUNC0(label, old_dentry, new_dir, new_dentry);
	FUNC2(label);

	return error;
}