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

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int FUNC0 (unsigned int) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

void *FUNC2(unsigned int fragsz)
{
	fragsz = FUNC0(fragsz);

	return FUNC1(fragsz, GFP_ATOMIC);
}