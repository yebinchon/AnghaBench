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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC1(const __be32 old[4], const __be32 addr[4],
			   const __be32 mask[4], __be32 masked[4])
{
	masked[0] = FUNC0(old[0], addr[0], mask[0]);
	masked[1] = FUNC0(old[1], addr[1], mask[1]);
	masked[2] = FUNC0(old[2], addr[2], mask[2]);
	masked[3] = FUNC0(old[3], addr[3], mask[3]);
}