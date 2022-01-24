#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* level; } ;
struct context {TYPE_2__ range; } ;
struct TYPE_3__ {int /*<<< orphan*/  cat; int /*<<< orphan*/  sens; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct context *dst, struct context *src)
{
	int rc;

	dst->range.level[0].sens = src->range.level[0].sens;
	rc = FUNC0(&dst->range.level[0].cat, &src->range.level[0].cat);
	if (rc)
		goto out;

	dst->range.level[1].sens = src->range.level[1].sens;
	rc = FUNC0(&dst->range.level[1].cat, &src->range.level[1].cat);
	if (rc)
		FUNC1(&dst->range.level[0].cat);
out:
	return rc;
}