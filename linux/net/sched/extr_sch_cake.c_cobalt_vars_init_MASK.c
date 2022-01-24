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
struct cobalt_vars {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * cobalt_rec_inv_sqrt_cache ; 
 int /*<<< orphan*/  FUNC1 (struct cobalt_vars*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cobalt_vars *vars)
{
	FUNC1(vars, 0, sizeof(*vars));

	if (!cobalt_rec_inv_sqrt_cache[0]) {
		FUNC0();
		cobalt_rec_inv_sqrt_cache[0] = ~0;
	}
}