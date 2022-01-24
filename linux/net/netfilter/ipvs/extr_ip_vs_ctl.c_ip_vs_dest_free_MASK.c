#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ip_vs_service {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpustats; } ;
struct ip_vs_dest {TYPE_1__ stats; int /*<<< orphan*/  svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_service*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_dest*) ; 
 struct ip_vs_service* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ip_vs_dest *dest)
{
	struct ip_vs_service *svc = FUNC4(dest->svc, 1);

	FUNC0(dest);
	FUNC1(svc, false);
	FUNC2(dest->stats.cpustats);
	FUNC3(dest);
}