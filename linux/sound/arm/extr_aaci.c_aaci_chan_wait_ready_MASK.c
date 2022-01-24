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
typedef  unsigned long u32 ;
struct aaci_runtime {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AACI_SR ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void
FUNC2(struct aaci_runtime *aacirun, unsigned long mask)
{
	u32 val;
	int timeout = 5000;

	do {
		FUNC1(1);
		val = FUNC0(aacirun->base + AACI_SR);
	} while (val & mask && timeout--);
}