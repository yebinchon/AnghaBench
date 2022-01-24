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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned short SG_CHUNK_SIZE ; 
 int FUNC1 (unsigned short) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned short nents)
{
	unsigned int index;

	FUNC0(nents > SG_CHUNK_SIZE);

	if (nents <= 8)
		index = 0;
	else
		index = FUNC1(nents) - 3;

	return index;
}