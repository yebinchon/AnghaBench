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
 scalar_t__ authentic_amd ; 
 scalar_t__ genuine_intel ; 
 scalar_t__ hygon_genuine ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

void FUNC2(unsigned int family, unsigned int model)
{
	if (genuine_intel)
		FUNC1(family, model);
	if (authentic_amd || hygon_genuine)
		FUNC0(family, model);
}