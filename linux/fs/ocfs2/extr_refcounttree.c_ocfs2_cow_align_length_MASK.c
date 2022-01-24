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
struct super_block {int dummy; } ;

/* Variables and functions */
 unsigned int UINT_MAX ; 
 int FUNC0 (struct super_block*) ; 
 unsigned int FUNC1 (struct super_block*) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct super_block *sb,
						  unsigned int len)
{
	unsigned int padded =
		(len + (FUNC0(sb) - 1)) &
		FUNC1(sb);

	/* Did we wrap? */
	if (padded < len)
		padded = UINT_MAX;

	return padded;
}