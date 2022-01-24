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
struct j1939_session {int /*<<< orphan*/  rxtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct j1939_session *session,
					  int msec)
{
	FUNC2(session);
	FUNC1(session);
	FUNC0(&session->rxtimer, FUNC3(msec),
		      HRTIMER_MODE_REL_SOFT);
}