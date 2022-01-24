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
struct gcov_iterator {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  size; struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_iterator*) ; 
 struct gcov_iterator* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

struct gcov_iterator *FUNC4(struct gcov_info *info)
{
	struct gcov_iterator *iter;

	iter = FUNC2(sizeof(struct gcov_iterator), GFP_KERNEL);
	if (!iter)
		goto err_free;

	iter->info = info;
	/* Dry-run to get the actual buffer size. */
	iter->size = FUNC0(NULL, info);
	iter->buffer = FUNC3(iter->size);
	if (!iter->buffer)
		goto err_free;

	FUNC0(iter->buffer, info);

	return iter;

err_free:
	FUNC1(iter);
	return NULL;
}