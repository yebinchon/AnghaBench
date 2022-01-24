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
struct ip_vs_dest {int /*<<< orphan*/  svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ip_vs_service*) ; 

__attribute__((used)) static inline void
FUNC2(struct ip_vs_dest *dest, struct ip_vs_service *svc)
{
	FUNC0(&svc->refcnt);
	FUNC1(dest->svc, svc);
}