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
struct inode {struct aa_proxy* i_private; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct aa_proxy {int /*<<< orphan*/  label; } ;
struct aa_profile {TYPE_1__* rawdata; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 struct aa_label* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ,char const*) ; 
 struct aa_profile* FUNC5 (struct aa_label*) ; 
 int FUNC6 (struct aa_profile*) ; 
 int /*<<< orphan*/  rawdata_link_cb ; 
 int /*<<< orphan*/  FUNC7 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC8(struct dentry *dentry,
					 struct inode *inode,
					 struct delayed_call *done,
					 const char *name)
{
	struct aa_proxy *proxy = inode->i_private;
	struct aa_label *label;
	struct aa_profile *profile;
	char *target;
	int depth;

	if (!dentry)
		return FUNC0(-ECHILD);

	label = FUNC2(&proxy->label);
	profile = FUNC5(label);
	depth = FUNC6(profile);
	target = FUNC4(depth, profile->rawdata->name, name);
	FUNC3(label);

	if (FUNC1(target))
		return target;

	FUNC7(done, rawdata_link_cb, target);

	return target;
}