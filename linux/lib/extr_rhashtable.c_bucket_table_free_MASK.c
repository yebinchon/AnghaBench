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
struct bucket_table {scalar_t__ nest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bucket_table const*) ; 
 int /*<<< orphan*/  FUNC1 (struct bucket_table const*) ; 

__attribute__((used)) static void FUNC2(const struct bucket_table *tbl)
{
	if (tbl->nest)
		FUNC1(tbl);

	FUNC0(tbl);
}