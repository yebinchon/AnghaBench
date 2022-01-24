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
typedef  int u64 ;
struct tnum {int value; int mask; } ;

/* Variables and functions */
 struct tnum FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct tnum FUNC1 (struct tnum,int,int) ; 

struct tnum FUNC2(struct tnum a, struct tnum b)
{
	struct tnum acc;
	u64 pi;

	pi = a.value * b.value;
	acc = FUNC1(FUNC0(pi, 0), a.mask, b.mask | b.value);
	return FUNC1(acc, b.mask, a.value);
}