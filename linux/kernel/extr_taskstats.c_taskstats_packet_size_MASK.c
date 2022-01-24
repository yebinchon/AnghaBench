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
typedef  int /*<<< orphan*/  u32 ;
struct taskstats {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(void)
{
	size_t size;

	size = FUNC0(sizeof(u32)) +
		FUNC1(sizeof(struct taskstats)) +
		FUNC0(0);

	return size;
}