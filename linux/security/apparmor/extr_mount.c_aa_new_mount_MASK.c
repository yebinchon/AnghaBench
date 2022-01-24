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
struct file_system_type {int fs_flags; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOENT ; 
 int FS_BINARY_MOUNTDATA ; 
 int FS_REQUIRES_DEV ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int FUNC1 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct file_system_type* FUNC3 (char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_profile*,struct path const*,char*,struct path*,char*,char const*,unsigned long,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_profile*,struct path const*,char*,char const*,char const*,unsigned long,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct file_system_type*) ; 

int FUNC10(struct aa_label *label, const char *dev_name,
		 const struct path *path, const char *type, unsigned long flags,
		 void *data)
{
	struct aa_profile *profile;
	char *buffer = NULL, *dev_buffer = NULL;
	bool binary = true;
	int error;
	int requires_dev = 0;
	struct path tmp_path, *dev_path = NULL;

	FUNC0(!label);
	FUNC0(!path);

	if (type) {
		struct file_system_type *fstype;

		fstype = FUNC3(type);
		if (!fstype)
			return -ENODEV;
		binary = fstype->fs_flags & FS_BINARY_MOUNTDATA;
		requires_dev = fstype->fs_flags & FS_REQUIRES_DEV;
		FUNC9(fstype);

		if (requires_dev) {
			if (!dev_name || !*dev_name)
				return -ENOENT;

			error = FUNC4(dev_name, LOOKUP_FOLLOW, &tmp_path);
			if (error)
				return error;
			dev_path = &tmp_path;
		}
	}

	FUNC2(buffer, dev_buffer);
	if (dev_path) {
		error = FUNC1(label, profile,
			FUNC5(profile, path, buffer, dev_path, dev_buffer,
				  type, flags, data, binary));
	} else {
		error = FUNC1(label, profile,
			FUNC6(profile, path, buffer, dev_name,
					   type, flags, data, binary, NULL));
	}
	FUNC8(buffer, dev_buffer);
	if (dev_path)
		FUNC7(dev_path);

	return error;
}