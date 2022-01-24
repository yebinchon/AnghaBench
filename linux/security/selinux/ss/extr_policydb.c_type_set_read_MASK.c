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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC3(struct type_set *t, void *fp)
{
	__le32 buf[1];
	int rc;

	if (FUNC0(&t->types, fp))
		return -EINVAL;
	if (FUNC0(&t->negset, fp))
		return -EINVAL;

	rc = FUNC2(buf, fp, sizeof(u32));
	if (rc < 0)
		return -EINVAL;
	t->flags = FUNC1(buf[0]);

	return 0;
}