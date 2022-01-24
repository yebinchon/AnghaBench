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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct path const*,char* const,int const) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC5(const struct path *path, char * const buffer,
				      const int buflen)
{
	char *pos = FUNC0(-ENOMEM);

	if (buflen >= 256) {
		/* go to whatever namespace root we are under */
		pos = FUNC3(path, buffer, buflen - 1);
		if (!FUNC1(pos) && *pos == '/' && pos[1]) {
			struct inode *inode = FUNC4(path->dentry);

			if (inode && FUNC2(inode->i_mode)) {
				buffer[buflen - 2] = '/';
				buffer[buflen - 1] = '\0';
			}
		}
	}
	return pos;
}