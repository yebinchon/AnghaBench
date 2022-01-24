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
typedef  int u8 ;
struct smc_ib_device {int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * local_systemid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(struct smc_ib_device *smcibdev,
						u8 ibport)
{
	FUNC1(&local_systemid[2], &smcibdev->mac[ibport - 1],
	       sizeof(smcibdev->mac[ibport - 1]));
	FUNC0(&local_systemid[0], 2);
}