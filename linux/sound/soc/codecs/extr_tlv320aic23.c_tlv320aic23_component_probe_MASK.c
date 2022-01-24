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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLV320AIC23_ACTIVE ; 
 int /*<<< orphan*/  TLV320AIC23_ANLG ; 
 int TLV320AIC23_BYPASS_ON ; 
 int TLV320AIC23_DEEMP_44K ; 
 int TLV320AIC23_DEFAULT_OUT_VOL ; 
 int /*<<< orphan*/  TLV320AIC23_DIGT ; 
 int /*<<< orphan*/  TLV320AIC23_LCHNVOL ; 
 int TLV320AIC23_LIM_MUTED ; 
 int /*<<< orphan*/  TLV320AIC23_LINVOL ; 
 int /*<<< orphan*/  TLV320AIC23_LRS_ENABLED ; 
 int TLV320AIC23_MICM_MUTED ; 
 int TLV320AIC23_OUT_VOL_MASK ; 
 int /*<<< orphan*/  TLV320AIC23_RCHNVOL ; 
 int /*<<< orphan*/  TLV320AIC23_RESET ; 
 int /*<<< orphan*/  TLV320AIC23_RINVOL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	/* Reset codec */
	FUNC1(component, TLV320AIC23_RESET, 0);

	FUNC1(component, TLV320AIC23_DIGT, TLV320AIC23_DEEMP_44K);

	/* Unmute input */
	FUNC0(component, TLV320AIC23_LINVOL,
			    TLV320AIC23_LIM_MUTED, TLV320AIC23_LRS_ENABLED);

	FUNC0(component, TLV320AIC23_RINVOL,
			    TLV320AIC23_LIM_MUTED, TLV320AIC23_LRS_ENABLED);

	FUNC0(component, TLV320AIC23_ANLG,
			    TLV320AIC23_BYPASS_ON | TLV320AIC23_MICM_MUTED,
			    0);

	/* Default output volume */
	FUNC1(component, TLV320AIC23_LCHNVOL,
		      TLV320AIC23_DEFAULT_OUT_VOL & TLV320AIC23_OUT_VOL_MASK);
	FUNC1(component, TLV320AIC23_RCHNVOL,
		      TLV320AIC23_DEFAULT_OUT_VOL & TLV320AIC23_OUT_VOL_MASK);

	FUNC1(component, TLV320AIC23_ACTIVE, 0x1);

	return 0;
}