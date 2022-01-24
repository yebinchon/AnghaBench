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
struct pcxhr_mgr {int dummy; } ;

/* Variables and functions */
 int PCXHR_CHIPSC_INIT_VALUE ; 
 int PCXHR_CHIPSC_RESET_XILINX ; 
 int /*<<< orphan*/  FUNC0 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCXHR_PLX_CHIPSC ; 

void FUNC1(struct pcxhr_mgr *mgr)
{
	/* reset second xilinx */
	FUNC0(mgr, PCXHR_PLX_CHIPSC,
		    PCXHR_CHIPSC_INIT_VALUE & ~PCXHR_CHIPSC_RESET_XILINX);
}