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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 char* FUNC4 (struct dentry*,char* const,int const) ; 

__attribute__((used)) static char *FUNC5(struct dentry *dentry, char * const buffer,
				    const int buflen)
{
	char *pos = FUNC0(-ENOMEM);

	if (buflen >= 256) {
		pos = FUNC4(dentry, buffer, buflen - 1);
		if (!FUNC1(pos) && *pos == '/' && pos[1]) {
			struct inode *inode = FUNC3(dentry);

			if (inode && FUNC2(inode->i_mode)) {
				buffer[buflen - 2] = '/';
				buffer[buflen - 1] = '\0';
			}
		}
	}
	return pos;
}