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
struct aic3x_priv {int model; int ocmv; } ;

/* Variables and functions */
#define  AIC3X_MODEL_3007 130 
 int AIC3X_MODEL_3104 ; 
#define  AIC3X_MODEL_33 129 
#define  AIC3X_MODEL_3X 128 
 int /*<<< orphan*/  AIC3X_PAGE_SELECT ; 
 int /*<<< orphan*/  AIC3X_RESET ; 
 int /*<<< orphan*/  CLASSD_CTRL ; 
 int /*<<< orphan*/  DACL1_2_HPLCOM_VOL ; 
 int /*<<< orphan*/  DACL1_2_HPLOUT_VOL ; 
 int /*<<< orphan*/  DACL1_2_LLOPM_VOL ; 
 int /*<<< orphan*/  DACR1_2_HPRCOM_VOL ; 
 int /*<<< orphan*/  DACR1_2_HPROUT_VOL ; 
 int /*<<< orphan*/  DACR1_2_RLOPM_VOL ; 
 int DEFAULT_GAIN ; 
 int DEFAULT_VOL ; 
 int /*<<< orphan*/  HPLCOM_CTRL ; 
 int /*<<< orphan*/  HPLOUT_CTRL ; 
 int /*<<< orphan*/  HPOUT_SC ; 
 int HPOUT_SC_OCMV_MASK ; 
 int HPOUT_SC_OCMV_SHIFT ; 
 int /*<<< orphan*/  HPRCOM_CTRL ; 
 int /*<<< orphan*/  HPROUT_CTRL ; 
 int /*<<< orphan*/  LADC_VOL ; 
 int /*<<< orphan*/  LDAC_VOL ; 
 int /*<<< orphan*/  LINE1L_2_LADC_CTRL ; 
 int /*<<< orphan*/  LINE1R_2_RADC_CTRL ; 
 int /*<<< orphan*/  LINE2L_2_HPLCOM_VOL ; 
 int /*<<< orphan*/  LINE2L_2_HPLOUT_VOL ; 
 int /*<<< orphan*/  LINE2L_2_LLOPM_VOL ; 
 int /*<<< orphan*/  LINE2R_2_HPRCOM_VOL ; 
 int /*<<< orphan*/  LINE2R_2_HPROUT_VOL ; 
 int /*<<< orphan*/  LINE2R_2_RLOPM_VOL ; 
 int /*<<< orphan*/  LLOPM_CTRL ; 
 int MUTE_ON ; 
 int PAGE0_SELECT ; 
 int /*<<< orphan*/  PGAL_2_HPLCOM_VOL ; 
 int /*<<< orphan*/  PGAL_2_HPLOUT_VOL ; 
 int /*<<< orphan*/  PGAL_2_LLOPM_VOL ; 
 int /*<<< orphan*/  PGAR_2_HPRCOM_VOL ; 
 int /*<<< orphan*/  PGAR_2_HPROUT_VOL ; 
 int /*<<< orphan*/  PGAR_2_RLOPM_VOL ; 
 int /*<<< orphan*/  RADC_VOL ; 
 int /*<<< orphan*/  RDAC_VOL ; 
 int /*<<< orphan*/  RLOPM_CTRL ; 
 int ROUTE_ON ; 
 int SOFT_RESET ; 
 int UNMUTE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 struct aic3x_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct aic3x_priv *aic3x = FUNC1(component);

	FUNC3(component, AIC3X_PAGE_SELECT, PAGE0_SELECT);
	FUNC3(component, AIC3X_RESET, SOFT_RESET);

	/* DAC default volume and mute */
	FUNC3(component, LDAC_VOL, DEFAULT_VOL | MUTE_ON);
	FUNC3(component, RDAC_VOL, DEFAULT_VOL | MUTE_ON);

	/* DAC to HP default volume and route to Output mixer */
	FUNC3(component, DACL1_2_HPLOUT_VOL, DEFAULT_VOL | ROUTE_ON);
	FUNC3(component, DACR1_2_HPROUT_VOL, DEFAULT_VOL | ROUTE_ON);
	FUNC3(component, DACL1_2_HPLCOM_VOL, DEFAULT_VOL | ROUTE_ON);
	FUNC3(component, DACR1_2_HPRCOM_VOL, DEFAULT_VOL | ROUTE_ON);
	/* DAC to Line Out default volume and route to Output mixer */
	FUNC3(component, DACL1_2_LLOPM_VOL, DEFAULT_VOL | ROUTE_ON);
	FUNC3(component, DACR1_2_RLOPM_VOL, DEFAULT_VOL | ROUTE_ON);

	/* unmute all outputs */
	FUNC2(component, LLOPM_CTRL, UNMUTE, UNMUTE);
	FUNC2(component, RLOPM_CTRL, UNMUTE, UNMUTE);
	FUNC2(component, HPLOUT_CTRL, UNMUTE, UNMUTE);
	FUNC2(component, HPROUT_CTRL, UNMUTE, UNMUTE);
	FUNC2(component, HPLCOM_CTRL, UNMUTE, UNMUTE);
	FUNC2(component, HPRCOM_CTRL, UNMUTE, UNMUTE);

	/* ADC default volume and unmute */
	FUNC3(component, LADC_VOL, DEFAULT_GAIN);
	FUNC3(component, RADC_VOL, DEFAULT_GAIN);
	/* By default route Line1 to ADC PGA mixer */
	FUNC3(component, LINE1L_2_LADC_CTRL, 0x0);
	FUNC3(component, LINE1R_2_RADC_CTRL, 0x0);

	/* PGA to HP Bypass default volume, disconnect from Output Mixer */
	FUNC3(component, PGAL_2_HPLOUT_VOL, DEFAULT_VOL);
	FUNC3(component, PGAR_2_HPROUT_VOL, DEFAULT_VOL);
	FUNC3(component, PGAL_2_HPLCOM_VOL, DEFAULT_VOL);
	FUNC3(component, PGAR_2_HPRCOM_VOL, DEFAULT_VOL);
	/* PGA to Line Out default volume, disconnect from Output Mixer */
	FUNC3(component, PGAL_2_LLOPM_VOL, DEFAULT_VOL);
	FUNC3(component, PGAR_2_RLOPM_VOL, DEFAULT_VOL);

	/* On tlv320aic3104, these registers are reserved and must not be written */
	if (aic3x->model != AIC3X_MODEL_3104) {
		/* Line2 to HP Bypass default volume, disconnect from Output Mixer */
		FUNC3(component, LINE2L_2_HPLOUT_VOL, DEFAULT_VOL);
		FUNC3(component, LINE2R_2_HPROUT_VOL, DEFAULT_VOL);
		FUNC3(component, LINE2L_2_HPLCOM_VOL, DEFAULT_VOL);
		FUNC3(component, LINE2R_2_HPRCOM_VOL, DEFAULT_VOL);
		/* Line2 Line Out default volume, disconnect from Output Mixer */
		FUNC3(component, LINE2L_2_LLOPM_VOL, DEFAULT_VOL);
		FUNC3(component, LINE2R_2_RLOPM_VOL, DEFAULT_VOL);
	}

	switch (aic3x->model) {
	case AIC3X_MODEL_3X:
	case AIC3X_MODEL_33:
		FUNC0(component);
		break;
	case AIC3X_MODEL_3007:
		FUNC3(component, CLASSD_CTRL, 0);
		break;
	}

	/*  Output common-mode voltage = 1.5 V */
	FUNC2(component, HPOUT_SC, HPOUT_SC_OCMV_MASK,
			    aic3x->ocmv << HPOUT_SC_OCMV_SHIFT);

	return 0;
}