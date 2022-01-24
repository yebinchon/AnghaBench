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
struct cpu_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_STAT_DATA ; 
 scalar_t__ FUNC0 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_key*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpu_key *key)
{
	FUNC1(key);
	if (FUNC0(key) == 0)
		FUNC2(key, TYPE_STAT_DATA);
}