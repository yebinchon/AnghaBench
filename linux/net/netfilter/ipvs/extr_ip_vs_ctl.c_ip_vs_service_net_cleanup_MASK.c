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
struct netns_ipvs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  __ip_vs_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct netns_ipvs*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct netns_ipvs *ipvs)
{
	FUNC0(2);
	/* Check for "full" addressed entries */
	FUNC3(&__ip_vs_mutex);
	FUNC2(ipvs, true);
	FUNC4(&__ip_vs_mutex);
	FUNC1(2);
}