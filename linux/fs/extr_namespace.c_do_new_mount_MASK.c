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
struct fs_context {int dummy; } ;
struct file_system_type {int fs_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int FS_HAS_SUBTYPE ; 
 scalar_t__ FUNC0 (struct fs_context*) ; 
 int FUNC1 (struct fs_context*) ; 
 int FUNC2 (struct fs_context*,struct path*,int) ; 
 struct fs_context* FUNC3 (struct file_system_type*,int) ; 
 struct file_system_type* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_context*) ; 
 int FUNC6 (struct fs_context*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC8 (struct fs_context*) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (struct fs_context*) ; 
 int FUNC12 (struct fs_context*,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct path *path, const char *fstype, int sb_flags,
			int mnt_flags, const char *name, void *data)
{
	struct file_system_type *type;
	struct fs_context *fc;
	const char *subtype = NULL;
	int err = 0;

	if (!fstype)
		return -EINVAL;

	type = FUNC4(fstype);
	if (!type)
		return -ENODEV;

	if (type->fs_flags & FS_HAS_SUBTYPE) {
		subtype = FUNC9(fstype, '.');
		if (subtype) {
			subtype++;
			if (!*subtype) {
				FUNC7(type);
				return -EINVAL;
			}
		}
	}

	fc = FUNC3(type, sb_flags);
	FUNC7(type);
	if (FUNC0(fc))
		return FUNC1(fc);

	if (subtype)
		err = FUNC12(fc, "subtype",
					  subtype, FUNC10(subtype));
	if (!err && name)
		err = FUNC12(fc, "source", name, FUNC10(name));
	if (!err)
		err = FUNC6(fc, data);
	if (!err && !FUNC5(fc))
		err = -EPERM;
	if (!err)
		err = FUNC11(fc);
	if (!err)
		err = FUNC2(fc, path, mnt_flags);

	FUNC8(fc);
	return err;
}