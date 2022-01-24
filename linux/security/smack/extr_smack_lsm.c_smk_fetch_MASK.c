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
struct smack_known {int dummy; } ;
struct inode {int i_opflags; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct smack_known* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int IOP_XATTR ; 
 int /*<<< orphan*/  SMK_LONGLABEL ; 
 int FUNC1 (struct dentry*,struct inode*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smack_known* FUNC4 (char*,int) ; 

__attribute__((used)) static struct smack_known *FUNC5(const char *name, struct inode *ip,
					struct dentry *dp)
{
	int rc;
	char *buffer;
	struct smack_known *skp = NULL;

	if (!(ip->i_opflags & IOP_XATTR))
		return FUNC0(-EOPNOTSUPP);

	buffer = FUNC3(SMK_LONGLABEL, GFP_NOFS);
	if (buffer == NULL)
		return FUNC0(-ENOMEM);

	rc = FUNC1(dp, ip, name, buffer, SMK_LONGLABEL);
	if (rc < 0)
		skp = FUNC0(rc);
	else if (rc == 0)
		skp = NULL;
	else
		skp = FUNC4(buffer, rc);

	FUNC2(buffer);

	return skp;
}