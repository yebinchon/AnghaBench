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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8
FUNC2(u32 hashsize)
{
	/* Assume that hashsize == 2^htable_bits */
	u8 bits = FUNC0(hashsize - 1);

	if (FUNC1(bits) != hashsize)
		/* Round up to the first 2^n value */
		bits = FUNC0(hashsize);

	return bits;
}