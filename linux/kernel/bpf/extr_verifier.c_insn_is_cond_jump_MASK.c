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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ BPF_CALL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BPF_EXIT ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ BPF_JMP ; 
 scalar_t__ BPF_JMP32 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static bool FUNC2(u8 code)
{
	u8 op;

	if (FUNC0(code) == BPF_JMP32)
		return true;

	if (FUNC0(code) != BPF_JMP)
		return false;

	op = FUNC1(code);
	return op != BPF_JA && op != BPF_EXIT && op != BPF_CALL;
}