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
struct garp_attr {int /*<<< orphan*/  node; } ;
struct garp_applicant {int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct garp_attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct garp_applicant *app, struct garp_attr *attr)
{
	FUNC1(&attr->node, &app->gid);
	FUNC0(attr);
}