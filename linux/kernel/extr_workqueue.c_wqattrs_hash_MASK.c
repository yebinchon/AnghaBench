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
struct workqueue_attrs {int /*<<< orphan*/  cpumask; int /*<<< orphan*/  nice; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_cpumask_bits ; 

__attribute__((used)) static u32 FUNC4(const struct workqueue_attrs *attrs)
{
	u32 hash = 0;

	hash = FUNC3(attrs->nice, hash);
	hash = FUNC2(FUNC1(attrs->cpumask),
		     FUNC0(nr_cpumask_bits) * sizeof(long), hash);
	return hash;
}