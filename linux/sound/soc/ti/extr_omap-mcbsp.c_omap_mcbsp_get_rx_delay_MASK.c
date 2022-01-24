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
typedef  scalar_t__ u16 ;
struct omap_mcbsp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBUFFSTAT ; 
 int /*<<< orphan*/  THRSH1 ; 

__attribute__((used)) static u16 FUNC1(struct omap_mcbsp *mcbsp)
{
	u16 buffstat, threshold;

	/* Returns the number of used locations in the buffer */
	buffstat = FUNC0(mcbsp, RBUFFSTAT);
	/* RX threshold */
	threshold = FUNC0(mcbsp, THRSH1);

	/* Return the number of location till we reach the threshold limit */
	if (threshold <= buffstat)
		return 0;
	else
		return threshold - buffstat;
}