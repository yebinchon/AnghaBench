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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  u32 ;
struct path_cond {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct path const*,struct dentry*,int /*<<< orphan*/ ,struct path_cond*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *op, const struct path *dir,
			      struct dentry *dentry, u32 mask, umode_t mode)
{
	struct path_cond cond = { FUNC1(), mode };

	if (!FUNC2(dir->dentry))
		return 0;

	return FUNC0(op, dir, dentry, mask, &cond);
}