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
struct fsnotify_mark {int dummy; } ;
struct audit_chunk {struct fsnotify_mark* mark; } ;
struct TYPE_2__ {struct audit_chunk* chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  hash_lock ; 
 struct audit_chunk* FUNC2 (struct fsnotify_mark*) ; 

__attribute__((used)) static void FUNC3(struct fsnotify_mark *mark,
			       struct audit_chunk *chunk)
{
	struct audit_chunk *old;

	FUNC0(&hash_lock);
	old = FUNC2(mark);
	FUNC1(mark)->chunk = chunk;
	if (chunk)
		chunk->mark = mark;
	if (old)
		old->mark = NULL;
}