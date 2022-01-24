#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct path_cond {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct path const*,int /*<<< orphan*/ ,struct path_cond*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *op, const struct path *path, u32 mask)
{
	struct path_cond cond = { FUNC1(path->dentry)->i_uid,
				  FUNC1(path->dentry)->i_mode
	};

	if (!FUNC2(path->dentry))
		return 0;

	return FUNC0(op, path, mask, &cond);
}