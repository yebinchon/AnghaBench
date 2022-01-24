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
struct work_struct {int dummy; } ;
struct dummy {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ALLOC_PERIOD ; 
 int /*<<< orphan*/  alloc_dwork ; 
 struct dummy* FUNC0 () ; 
 int /*<<< orphan*/  dummy_list ; 
 int /*<<< orphan*/  dummy_list_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct dummy *d;

	d = FUNC0();
	if (!d)
		return;

	FUNC3(&dummy_list_mutex);
	FUNC1(&d->list, &dummy_list);
	FUNC4(&dummy_list_mutex);

	FUNC5(&alloc_dwork,
		FUNC2(1000 * ALLOC_PERIOD));
}