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
struct tnum {int value; int mask; } ;

/* Variables and functions */
 struct tnum FUNC0 (int,int) ; 

struct tnum FUNC1(struct tnum a, u8 shift)
{
	return FUNC0(a.value >> shift, a.mask >> shift);
}