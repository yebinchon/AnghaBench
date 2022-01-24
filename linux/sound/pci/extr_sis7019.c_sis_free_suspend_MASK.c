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
struct sis7019 {int /*<<< orphan*/ * suspend_state; } ;

/* Variables and functions */
 int SIS_SUSPEND_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sis7019 *sis)
{
	int i;

	for (i = 0; i < SIS_SUSPEND_PAGES; i++)
		FUNC0(sis->suspend_state[i]);
}