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
struct rfcomm_session {int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rfcomm_session *s)
{
	FUNC0("session %p state %ld", s, s->state);

	FUNC1(&s->timer);
}