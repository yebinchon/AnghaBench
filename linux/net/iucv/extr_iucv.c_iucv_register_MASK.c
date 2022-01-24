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
struct iucv_handler {int /*<<< orphan*/  list; int /*<<< orphan*/  paths; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_available ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  iucv_handler_list ; 
 int iucv_nonsmp_handler ; 
 int /*<<< orphan*/  iucv_register_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  iucv_table_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iucv_handler *handler, int smp)
{
	int rc;

	if (!iucv_available)
		return -ENOSYS;
	FUNC5(&iucv_register_mutex);
	if (!smp)
		iucv_nonsmp_handler++;
	if (FUNC4(&iucv_handler_list)) {
		rc = FUNC1();
		if (rc)
			goto out_mutex;
	} else if (!smp && iucv_nonsmp_handler == 1)
		FUNC2();
	FUNC0(&handler->paths);

	FUNC7(&iucv_table_lock);
	FUNC3(&handler->list, &iucv_handler_list);
	FUNC8(&iucv_table_lock);
	rc = 0;
out_mutex:
	FUNC6(&iucv_register_mutex);
	return rc;
}