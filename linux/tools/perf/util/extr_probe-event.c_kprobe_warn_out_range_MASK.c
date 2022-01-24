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
typedef  unsigned long u64 ;

/* Variables and functions */
 int FUNC0 (char*,unsigned long*,int,int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static bool FUNC3(const char *symbol, unsigned long address)
{
	u64 etext_addr = 0;
	int ret;

	/* Get the address of _etext for checking non-probable text symbol */
	ret = FUNC0("_etext", &etext_addr,
						false, false);

	if (ret == 0 && etext_addr < address)
		FUNC2("%s is out of .text, skip it.\n", symbol);
	else if (FUNC1(address))
		FUNC2("%s is blacklisted function, skip it.\n", symbol);
	else
		return false;

	return true;
}