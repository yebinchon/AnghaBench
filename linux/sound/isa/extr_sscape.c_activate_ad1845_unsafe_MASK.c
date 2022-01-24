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
 int /*<<< orphan*/  GA_CDCFG_REG ; 
 int /*<<< orphan*/  GA_HMCTL_REG ; 
 unsigned char FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned io_base)
{
	unsigned char val = FUNC0(io_base, GA_HMCTL_REG);
	FUNC1(io_base, GA_HMCTL_REG, (val & 0xcf) | 0x10);
	FUNC1(io_base, GA_CDCFG_REG, 0x80);
}