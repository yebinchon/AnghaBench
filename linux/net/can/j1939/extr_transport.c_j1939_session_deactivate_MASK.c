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
struct j1939_session {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int FUNC0 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct j1939_session *session)
{
	bool active;

	FUNC1(session->priv);
	active = FUNC0(session);
	FUNC2(session->priv);

	return active;
}