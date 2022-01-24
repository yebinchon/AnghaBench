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
typedef  int u16 ;
struct omap_mcbsp {int /*<<< orphan*/  dev; } ;
typedef  int s16 ;

/* Variables and functions */
 int FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcbsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SFIRCR ; 
 int /*<<< orphan*/  SSELCR ; 
 int ST_COEFFWRDONE ; 
 int ST_COEFFWREN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct omap_mcbsp *mcbsp, s16 *fir)
{
	u16 val, i;

	val = FUNC0(mcbsp, SSELCR);

	if (val & ST_COEFFWREN)
		FUNC1(mcbsp, SSELCR, val & ~(ST_COEFFWREN));

	FUNC1(mcbsp, SSELCR, val | ST_COEFFWREN);

	for (i = 0; i < 128; i++)
		FUNC1(mcbsp, SFIRCR, fir[i]);

	i = 0;

	val = FUNC0(mcbsp, SSELCR);
	while (!(val & ST_COEFFWRDONE) && (++i < 1000))
		val = FUNC0(mcbsp, SSELCR);

	FUNC1(mcbsp, SSELCR, val & ~(ST_COEFFWREN));

	if (i == 1000)
		FUNC2(mcbsp->dev, "McBSP FIR load error!\n");
}