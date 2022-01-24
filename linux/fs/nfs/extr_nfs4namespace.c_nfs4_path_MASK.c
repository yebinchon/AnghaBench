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
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NFS_PATH_CANONICAL ; 
 char* FUNC1 (char**,struct dentry*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(struct dentry *dentry, char *buffer, ssize_t buflen)
{
	char *limit;
	char *path = FUNC1(&limit, dentry, buffer, buflen,
			      NFS_PATH_CANONICAL);
	if (!FUNC0(path)) {
		char *path_component = FUNC2(path, limit);
		if (path_component)
			return path_component;
	}
	return path;
}