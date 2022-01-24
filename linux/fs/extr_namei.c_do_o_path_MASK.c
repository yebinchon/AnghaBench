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
struct nameidata {int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nameidata*,unsigned int,struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int FUNC3 (struct path*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct nameidata *nd, unsigned flags, struct file *file)
{
	struct path path;
	int error = FUNC1(nd, flags, &path);
	if (!error) {
		FUNC0(nd->name, path.dentry, 0);
		error = FUNC3(&path, file);
		FUNC2(&path);
	}
	return error;
}