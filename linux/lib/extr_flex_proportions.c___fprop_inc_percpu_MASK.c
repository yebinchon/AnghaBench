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
struct fprop_local_percpu {int /*<<< orphan*/  events; } ;
struct fprop_global {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROP_BATCH ; 
 int /*<<< orphan*/  FUNC0 (struct fprop_global*,struct fprop_local_percpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct fprop_global *p, struct fprop_local_percpu *pl)
{
	FUNC0(p, pl);
	FUNC2(&pl->events, 1, PROP_BATCH);
	FUNC1(&p->events, 1);
}