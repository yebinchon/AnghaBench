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
struct vmx_pages {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmx_pages*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct vmx_pages *vmx, void *guest_rip, void *guest_rsp)
{
	FUNC0(vmx);
	FUNC2();
	FUNC1(guest_rip, guest_rsp);
}