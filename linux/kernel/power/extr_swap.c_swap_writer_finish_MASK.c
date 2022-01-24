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
struct swap_map_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct swap_map_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct swap_map_handle*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct swap_map_handle*) ; 
 int /*<<< orphan*/  root_swap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct swap_map_handle *handle,
		unsigned int flags, int error)
{
	if (!error) {
		FUNC0(handle);
		FUNC4("S");
		error = FUNC2(handle, flags);
		FUNC3("|\n");
	}

	if (error)
		FUNC1(root_swap);
	FUNC5(handle);
	FUNC6(FMODE_WRITE);

	return error;
}