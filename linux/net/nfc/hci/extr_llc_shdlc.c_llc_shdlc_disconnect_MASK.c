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
struct llc_shdlc {int /*<<< orphan*/  sm_work; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHDLC_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct llc_shdlc *shdlc)
{
	FUNC2("\n");

	FUNC0(&shdlc->state_mutex);

	shdlc->state = SHDLC_DISCONNECTED;

	FUNC1(&shdlc->state_mutex);

	FUNC3(&shdlc->sm_work);
}