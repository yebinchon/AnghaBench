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
struct fscache_state {int dummy; } ;
struct fscache_object {int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAIT_FOR_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_object*) ; 
 struct fscache_state const* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC4(struct fscache_object *object,
							 int event)
{
	FUNC0("{OBJ%x},%d", object->debug_id, event);

	FUNC2(object);

	FUNC1("");
	return FUNC3(WAIT_FOR_CMD);
}