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
struct fl_flow_tmplt {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fl_flow_tmplt*) ; 
 int /*<<< orphan*/  FUNC1 (struct fl_flow_tmplt*) ; 

__attribute__((used)) static void FUNC2(void *tmplt_priv)
{
	struct fl_flow_tmplt *tmplt = tmplt_priv;

	FUNC0(tmplt->chain, tmplt);
	FUNC1(tmplt);
}