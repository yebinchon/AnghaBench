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
struct path {int /*<<< orphan*/  dentry; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct filename {int /*<<< orphan*/  name; } ;
typedef  enum bpf_type { ____Placeholder_bpf_type } bpf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,int*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 

__attribute__((used)) static void *FUNC10(const struct filename *pathname,
			    enum bpf_type *type, int flags)
{
	struct inode *inode;
	struct path path;
	void *raw;
	int ret;

	ret = FUNC7(pathname->name, LOOKUP_FOLLOW, &path);
	if (ret)
		return FUNC1(ret);

	inode = FUNC5(path.dentry);
	ret = FUNC6(inode, FUNC0(flags));
	if (ret)
		goto out;

	ret = FUNC4(inode, type);
	if (ret)
		goto out;

	raw = FUNC3(inode->i_private, *type);
	if (!FUNC2(raw))
		FUNC9(&path);

	FUNC8(&path);
	return raw;
out:
	FUNC8(&path);
	return FUNC1(ret);
}