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
struct rfcomm_session {int /*<<< orphan*/  dlcs; } ;
struct rfcomm_dlc {struct rfcomm_session* session; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_session*) ; 

__attribute__((used)) static void FUNC4(struct rfcomm_session *s, struct rfcomm_dlc *d)
{
	FUNC0("dlc %p session %p", d, s);

	FUNC3(s);
	FUNC2(d);
	FUNC1(&d->list, &s->dlcs);
	d->session = s;
}