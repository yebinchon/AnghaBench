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
struct vfsmount {int dummy; } ;
struct fs_context {int dummy; } ;
struct file_system_type {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vfsmount* FUNC0 (struct fs_context*) ; 
 struct vfsmount* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct fs_context*) ; 
 struct vfsmount* FUNC3 (struct fs_context*) ; 
 struct fs_context* FUNC4 (struct file_system_type*,int) ; 
 int FUNC5 (struct fs_context*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (struct fs_context*,char*,char const*,int /*<<< orphan*/ ) ; 

struct vfsmount *FUNC9(struct file_system_type *type,
				int flags, const char *name,
				void *data)
{
	struct fs_context *fc;
	struct vfsmount *mnt;
	int ret = 0;

	if (!type)
		return FUNC1(-EINVAL);

	fc = FUNC4(type, flags);
	if (FUNC2(fc))
		return FUNC0(fc);

	if (name)
		ret = FUNC8(fc, "source",
					  name, FUNC7(name));
	if (!ret)
		ret = FUNC5(fc, data);
	if (!ret)
		mnt = FUNC3(fc);
	else
		mnt = FUNC1(ret);

	FUNC6(fc);
	return mnt;
}