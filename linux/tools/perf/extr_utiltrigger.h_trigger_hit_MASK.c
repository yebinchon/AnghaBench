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
struct trigger {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRIGGER_HIT ; 
 int /*<<< orphan*/  TRIGGER_READY ; 
 int /*<<< orphan*/  FUNC0 (struct trigger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trigger*) ; 

__attribute__((used)) static inline void FUNC2(struct trigger *t)
{
	if (!FUNC1(t))
		return;
	FUNC0(t, TRIGGER_READY);
	t->state = TRIGGER_HIT;
}