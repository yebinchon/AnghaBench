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
struct fscache_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_OBJECT_IS_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct fscache_object *object)
{
	FUNC1(&object->lock);
	FUNC0(FSCACHE_OBJECT_IS_LIVE, &object->flags);
	FUNC2(&object->lock);
}