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
struct dsa_switch {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  pl; } ;

/* Variables and functions */
 struct dsa_port* FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct dsa_switch *ds, int port, bool up)
{
	const struct dsa_port *dp = FUNC0(ds, port);

	FUNC1(dp->pl, up);
}