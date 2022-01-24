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
struct neighbour {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_F_REQUEST ; 
 int /*<<< orphan*/  RTM_GETNEIGH ; 
 int /*<<< orphan*/  FUNC0 (struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct neighbour *n)
{
	FUNC0(n, RTM_GETNEIGH, NLM_F_REQUEST, 0);
}