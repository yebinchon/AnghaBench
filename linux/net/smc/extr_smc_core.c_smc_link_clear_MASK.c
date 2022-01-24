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
struct smc_link {scalar_t__ peer_qpn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_link*) ; 

__attribute__((used)) static void FUNC6(struct smc_link *lnk)
{
	lnk->peer_qpn = 0;
	FUNC3(lnk);
	FUNC2(lnk);
	FUNC4(lnk);
	FUNC1(lnk);
	FUNC0(lnk);
	FUNC5(lnk);
}