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
struct sparsebit {int dummy; } ;
typedef  int /*<<< orphan*/  sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sparsebit*,int /*<<< orphan*/ ) ; 

bool FUNC1(struct sparsebit *s,
	sparsebit_idx_t idx)
{
	return !FUNC0(s, idx);
}