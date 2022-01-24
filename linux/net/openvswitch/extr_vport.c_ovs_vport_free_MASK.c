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
struct vport {int /*<<< orphan*/  upcall_portids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct vport *vport)
{
	/* vport is freed from RCU callback or error path, Therefore
	 * it is safe to use raw dereference.
	 */
	FUNC0(FUNC1(vport->upcall_portids));
	FUNC0(vport);
}