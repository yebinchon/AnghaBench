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
struct file_system_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 struct vfsmount* FUNC6 (struct file_system_type*,int,char*,void*) ; 

__attribute__((used)) static struct vfsmount *FUNC7(struct file_system_type *fs_type,
		int flags, void *data, const char *hostname)
{
	struct vfsmount *root_mnt;
	char *root_devname;
	size_t len;

	len = FUNC5(hostname) + 5;
	root_devname = FUNC2(len, GFP_KERNEL);
	if (root_devname == NULL)
		return FUNC0(-ENOMEM);
	/* Does hostname needs to be enclosed in brackets? */
	if (FUNC4(hostname, ':'))
		FUNC3(root_devname, len, "[%s]:/", hostname);
	else
		FUNC3(root_devname, len, "%s:/", hostname);
	root_mnt = FUNC6(fs_type, flags, root_devname, data);
	FUNC1(root_devname);
	return root_mnt;
}