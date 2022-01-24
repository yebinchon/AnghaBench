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
struct target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct target*) ; 
 int /*<<< orphan*/  FUNC1 (struct target*) ; 

__attribute__((used)) static inline bool FUNC2(struct target *target)
{
	return !FUNC1(target) && !FUNC0(target);
}