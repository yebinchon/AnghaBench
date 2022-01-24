#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct persistent_ram_zone {int flags; int buffer_size; int /*<<< orphan*/  buffer_lock; TYPE_1__* buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int PRZ_FLAG_NO_LOCK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static size_t FUNC5(struct persistent_ram_zone *prz, size_t a)
{
	int old;
	int new;
	unsigned long flags = 0;

	if (!(prz->flags & PRZ_FLAG_NO_LOCK))
		FUNC2(&prz->buffer_lock, flags);

	old = FUNC0(&prz->buffer->start);
	new = old + a;
	while (FUNC4(new >= prz->buffer_size))
		new -= prz->buffer_size;
	FUNC1(&prz->buffer->start, new);

	if (!(prz->flags & PRZ_FLAG_NO_LOCK))
		FUNC3(&prz->buffer_lock, flags);

	return old;
}