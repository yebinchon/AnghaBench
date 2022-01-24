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
typedef  int ulong ;
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(ulong time)
{
	u64 start, end;
	start = FUNC1();
	do {
		end = FUNC1();
		if (FUNC0())
			break;
	} while ((end - start) < (time * 1000));
}