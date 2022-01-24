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
typedef  int uint32_t ;
struct ssp_device {scalar_t__ mmio_base; } ;

/* Variables and functions */
 scalar_t__ SSCR0 ; 
 int SSCR0_SSE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ssp_device *ssp)
{
	uint32_t sscr0;

	sscr0 = FUNC0(ssp->mmio_base + SSCR0) & ~SSCR0_SSE;
	FUNC1(sscr0, ssp->mmio_base + SSCR0);
}