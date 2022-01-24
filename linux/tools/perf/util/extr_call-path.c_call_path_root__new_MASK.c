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
struct call_path_root {int /*<<< orphan*/  blocks; int /*<<< orphan*/  call_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct call_path_root* FUNC2 (int) ; 

struct call_path_root *FUNC3(void)
{
	struct call_path_root *cpr;

	cpr = FUNC2(sizeof(struct call_path_root));
	if (!cpr)
		return NULL;
	FUNC1(&cpr->call_path, NULL, NULL, 0, false);
	FUNC0(&cpr->blocks);
	return cpr;
}