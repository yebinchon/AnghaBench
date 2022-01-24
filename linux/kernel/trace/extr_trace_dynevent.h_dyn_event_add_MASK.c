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
struct dyn_event {int /*<<< orphan*/  list; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dyn_event_list ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct dyn_event *ev)
{
	FUNC1(&event_mutex);

	if (!ev || !ev->ops)
		return -EINVAL;

	FUNC0(&ev->list, &dyn_event_list);
	return 0;
}