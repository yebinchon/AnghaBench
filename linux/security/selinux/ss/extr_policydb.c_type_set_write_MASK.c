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
typedef  int /*<<< orphan*/  u32 ;
struct type_set {int /*<<< orphan*/  flags; int /*<<< orphan*/  negset; int /*<<< orphan*/  types; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC3(struct type_set *t, void *fp)
{
	int rc;
	__le32 buf[1];

	if (FUNC1(&t->types, fp))
		return -EINVAL;
	if (FUNC1(&t->negset, fp))
		return -EINVAL;

	buf[0] = FUNC0(t->flags);
	rc = FUNC2(buf, sizeof(u32), 1, fp);
	if (rc)
		return -EINVAL;

	return 0;
}