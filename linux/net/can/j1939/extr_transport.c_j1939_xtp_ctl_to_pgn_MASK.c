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
typedef  int u8 ;
typedef  int pgn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline pgn_t FUNC1(const u8 *dat)
{
	pgn_t pgn;

	pgn = (dat[7] << 16) | (dat[6] << 8) | (dat[5] << 0);
	if (FUNC0(pgn))
		pgn &= 0xffff00;
	return pgn;
}