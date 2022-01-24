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
struct batadv_tp_vars {int /*<<< orphan*/  more_bytes; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_tp_vars*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct batadv_tp_vars *tp_vars, size_t plen)
{
	int ret;

	ret = FUNC1(tp_vars->more_bytes,
					       FUNC0(tp_vars, plen),
					       HZ / 10);

	return ret;
}