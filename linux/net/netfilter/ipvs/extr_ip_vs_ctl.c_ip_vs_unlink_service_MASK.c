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
struct ip_vs_service {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_service*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_service*) ; 

__attribute__((used)) static void FUNC4(struct ip_vs_service *svc, bool cleanup)
{
	FUNC3(svc);
	/* Hold svc to avoid double release from dest_trash */
	FUNC1(&svc->refcnt);
	/*
	 * Unhash it from the service table
	 */
	FUNC2(svc);

	FUNC0(svc, cleanup);
}