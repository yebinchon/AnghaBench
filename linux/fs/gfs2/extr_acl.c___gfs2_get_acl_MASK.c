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
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_eattr; } ;

/* Variables and functions */
 struct posix_acl* FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (struct gfs2_inode*,char const*,char**) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct posix_acl* FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static struct posix_acl *FUNC6(struct inode *inode, int type)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct posix_acl *acl;
	const char *name;
	char *data;
	int len;

	if (!ip->i_eattr)
		return NULL;

	name = FUNC2(type);
	len = FUNC3(ip, name, &data);
	if (len <= 0)
		return FUNC0(len);
	acl = FUNC5(&init_user_ns, data, len);
	FUNC4(data);
	return acl;
}