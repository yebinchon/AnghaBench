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
struct seq_file {int dummy; } ;
struct kmemleak_object {int flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int OBJECT_REPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct kmemleak_object*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	struct kmemleak_object *object = v;
	unsigned long flags;

	FUNC1(&object->lock, flags);
	if ((object->flags & OBJECT_REPORTED) && FUNC3(object))
		FUNC0(seq, object);
	FUNC2(&object->lock, flags);
	return 0;
}