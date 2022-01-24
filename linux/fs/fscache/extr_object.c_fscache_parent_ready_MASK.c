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
struct fscache_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  lookup_jif; int /*<<< orphan*/  n_obj_ops; int /*<<< orphan*/  n_ops; int /*<<< orphan*/  debug_id; struct fscache_object* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOK_UP_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fscache_state const* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC6(struct fscache_object *object,
							int event)
{
	struct fscache_object *parent = object->parent;

	FUNC1("{OBJ%x},%d", object->debug_id, event);

	FUNC0(parent != NULL);

	FUNC3(&parent->lock);
	parent->n_ops++;
	parent->n_obj_ops++;
	object->lookup_jif = jiffies;
	FUNC4(&parent->lock);

	FUNC2("");
	return FUNC5(LOOK_UP_OBJECT);
}