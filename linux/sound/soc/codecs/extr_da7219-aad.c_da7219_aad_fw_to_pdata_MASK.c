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
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
struct snd_soc_component {struct device* dev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct da7219_aad_pdata {int a_d_btn_thr; int d_b_btn_thr; int b_c_btn_thr; int c_mic_btn_thr; int /*<<< orphan*/  adc_1bit_rpt; int /*<<< orphan*/  btn_avg; int /*<<< orphan*/  jack_rem_deb; int /*<<< orphan*/  jack_det_rate; int /*<<< orphan*/  jack_ins_deb; int /*<<< orphan*/  mic_det_thr; int /*<<< orphan*/  btn_cfg; scalar_t__ micbias_pulse_time; int /*<<< orphan*/  micbias_pulse_lvl; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_AAD_ADC_1BIT_RPT_1 ; 
 int /*<<< orphan*/  DA7219_AAD_BTN_AVG_2 ; 
 int /*<<< orphan*/  DA7219_AAD_BTN_CFG_10MS ; 
 int /*<<< orphan*/  DA7219_AAD_JACK_DET_RATE_256_512MS ; 
 int /*<<< orphan*/  DA7219_AAD_JACK_INS_DEB_20MS ; 
 int /*<<< orphan*/  DA7219_AAD_JACK_REM_DEB_1MS ; 
 int /*<<< orphan*/  DA7219_AAD_MICBIAS_PULSE_LVL_OFF ; 
 int /*<<< orphan*/  DA7219_AAD_MIC_DET_THR_500_OHMS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,scalar_t__) ; 
 struct fwnode_handle* FUNC8 (struct device*,char*) ; 
 struct da7219_aad_pdata* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fwnode_handle*,char*,char const**) ; 
 scalar_t__ FUNC11 (struct fwnode_handle*,char*,scalar_t__*) ; 
 struct i2c_client* FUNC12 (struct device*) ; 

__attribute__((used)) static struct da7219_aad_pdata *FUNC13(struct snd_soc_component *component)
{
	struct device *dev = component->dev;
	struct i2c_client *i2c = FUNC12(dev);
	struct fwnode_handle *aad_np;
	struct da7219_aad_pdata *aad_pdata;
	const char *fw_str;
	u32 fw_val32;

	aad_np = FUNC8(dev, "da7219_aad");
	if (!aad_np)
		return NULL;

	aad_pdata = FUNC9(dev, sizeof(*aad_pdata), GFP_KERNEL);
	if (!aad_pdata)
		return NULL;

	aad_pdata->irq = i2c->irq;

	if (FUNC11(aad_np, "dlg,micbias-pulse-lvl",
				     &fw_val32) >= 0)
		aad_pdata->micbias_pulse_lvl =
			FUNC7(component, fw_val32);
	else
		aad_pdata->micbias_pulse_lvl = DA7219_AAD_MICBIAS_PULSE_LVL_OFF;

	if (FUNC11(aad_np, "dlg,micbias-pulse-time",
				     &fw_val32) >= 0)
		aad_pdata->micbias_pulse_time = fw_val32;

	if (FUNC11(aad_np, "dlg,btn-cfg", &fw_val32) >= 0)
		aad_pdata->btn_cfg = FUNC2(component, fw_val32);
	else
		aad_pdata->btn_cfg = DA7219_AAD_BTN_CFG_10MS;

	if (FUNC11(aad_np, "dlg,mic-det-thr", &fw_val32) >= 0)
		aad_pdata->mic_det_thr =
			FUNC6(component, fw_val32);
	else
		aad_pdata->mic_det_thr = DA7219_AAD_MIC_DET_THR_500_OHMS;

	if (FUNC11(aad_np, "dlg,jack-ins-deb", &fw_val32) >= 0)
		aad_pdata->jack_ins_deb =
			FUNC4(component, fw_val32);
	else
		aad_pdata->jack_ins_deb = DA7219_AAD_JACK_INS_DEB_20MS;

	if (!FUNC10(aad_np, "dlg,jack-det-rate", &fw_str))
		aad_pdata->jack_det_rate =
			FUNC3(component, fw_str);
	else
		aad_pdata->jack_det_rate = DA7219_AAD_JACK_DET_RATE_256_512MS;

	if (FUNC11(aad_np, "dlg,jack-rem-deb", &fw_val32) >= 0)
		aad_pdata->jack_rem_deb =
			FUNC5(component, fw_val32);
	else
		aad_pdata->jack_rem_deb = DA7219_AAD_JACK_REM_DEB_1MS;

	if (FUNC11(aad_np, "dlg,a-d-btn-thr", &fw_val32) >= 0)
		aad_pdata->a_d_btn_thr = (u8) fw_val32;
	else
		aad_pdata->a_d_btn_thr = 0xA;

	if (FUNC11(aad_np, "dlg,d-b-btn-thr", &fw_val32) >= 0)
		aad_pdata->d_b_btn_thr = (u8) fw_val32;
	else
		aad_pdata->d_b_btn_thr = 0x16;

	if (FUNC11(aad_np, "dlg,b-c-btn-thr", &fw_val32) >= 0)
		aad_pdata->b_c_btn_thr = (u8) fw_val32;
	else
		aad_pdata->b_c_btn_thr = 0x21;

	if (FUNC11(aad_np, "dlg,c-mic-btn-thr", &fw_val32) >= 0)
		aad_pdata->c_mic_btn_thr = (u8) fw_val32;
	else
		aad_pdata->c_mic_btn_thr = 0x3E;

	if (FUNC11(aad_np, "dlg,btn-avg", &fw_val32) >= 0)
		aad_pdata->btn_avg = FUNC1(component, fw_val32);
	else
		aad_pdata->btn_avg = DA7219_AAD_BTN_AVG_2;

	if (FUNC11(aad_np, "dlg,adc-1bit-rpt", &fw_val32) >= 0)
		aad_pdata->adc_1bit_rpt =
			FUNC0(component, fw_val32);
	else
		aad_pdata->adc_1bit_rpt = DA7219_AAD_ADC_1BIT_RPT_1;

	return aad_pdata;
}