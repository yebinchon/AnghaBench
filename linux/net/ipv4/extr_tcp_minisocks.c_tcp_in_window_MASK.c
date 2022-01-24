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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC2(u32 seq, u32 end_seq, u32 s_win, u32 e_win)
{
	if (seq == s_win)
		return true;
	if (FUNC0(end_seq, s_win) && FUNC1(seq, e_win))
		return true;
	return seq == e_win && seq == end_seq;
}