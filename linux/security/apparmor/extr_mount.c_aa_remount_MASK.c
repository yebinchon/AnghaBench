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
struct path {TYPE_3__* dentry; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_6__ {TYPE_2__* d_sb; } ;
struct TYPE_5__ {TYPE_1__* s_type; } ;
struct TYPE_4__ {int fs_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FS_BINARY_MOUNTDATA ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*,struct path const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct aa_label *label, const struct path *path,
	       unsigned long flags, void *data)
{
	struct aa_profile *profile;
	char *buffer = NULL;
	bool binary;
	int error;

	FUNC0(!label);
	FUNC0(!path);

	binary = path->dentry->d_sb->s_type->fs_flags & FS_BINARY_MOUNTDATA;

	FUNC2(buffer);
	error = FUNC1(label, profile,
			FUNC3(profile, path, buffer, NULL, NULL, NULL,
				  flags, data, binary));
	FUNC4(buffer);

	return error;
}