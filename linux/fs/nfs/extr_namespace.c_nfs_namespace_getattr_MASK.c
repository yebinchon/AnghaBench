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
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kstat*) ; 
 int FUNC3 (struct path const*,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC4(const struct path *path, struct kstat *stat,
			u32 request_mask, unsigned int query_flags)
{
	if (FUNC0(FUNC1(path->dentry))->size != 0)
		return FUNC3(path, stat, request_mask, query_flags);
	FUNC2(FUNC1(path->dentry), stat);
	return 0;
}