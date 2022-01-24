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
struct snd_soc_component {int dummy; } ;
struct aic32x4_priv {TYPE_1__* setup; } ;
struct TYPE_2__ {scalar_t__* gpio_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC32X4_DINCTL ; 
 int /*<<< orphan*/  AIC32X4_DOUTCTL ; 
 int /*<<< orphan*/  AIC32X4_GPIOCTL ; 
 scalar_t__ AIC32X4_MFPX_DEFAULT_VALUE ; 
 int /*<<< orphan*/  AIC32X4_MISOCTL ; 
 int /*<<< orphan*/  AIC32X4_SCLKCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aic32x4_mfp1 ; 
 int /*<<< orphan*/  aic32x4_mfp2 ; 
 int /*<<< orphan*/  aic32x4_mfp3 ; 
 int /*<<< orphan*/  aic32x4_mfp4 ; 
 int /*<<< orphan*/  aic32x4_mfp5 ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic32x4_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct aic32x4_priv *aic32x4 = FUNC2(component);

	/* setup GPIO functions */
	/* MFP1 */
	if (aic32x4->setup->gpio_func[0] != AIC32X4_MFPX_DEFAULT_VALUE) {
		FUNC3(component, AIC32X4_DINCTL,
			  aic32x4->setup->gpio_func[0]);
		FUNC1(component, aic32x4_mfp1,
			FUNC0(aic32x4_mfp1));
	}

	/* MFP2 */
	if (aic32x4->setup->gpio_func[1] != AIC32X4_MFPX_DEFAULT_VALUE) {
		FUNC3(component, AIC32X4_DOUTCTL,
			  aic32x4->setup->gpio_func[1]);
		FUNC1(component, aic32x4_mfp2,
			FUNC0(aic32x4_mfp2));
	}

	/* MFP3 */
	if (aic32x4->setup->gpio_func[2] != AIC32X4_MFPX_DEFAULT_VALUE) {
		FUNC3(component, AIC32X4_SCLKCTL,
			  aic32x4->setup->gpio_func[2]);
		FUNC1(component, aic32x4_mfp3,
			FUNC0(aic32x4_mfp3));
	}

	/* MFP4 */
	if (aic32x4->setup->gpio_func[3] != AIC32X4_MFPX_DEFAULT_VALUE) {
		FUNC3(component, AIC32X4_MISOCTL,
			  aic32x4->setup->gpio_func[3]);
		FUNC1(component, aic32x4_mfp4,
			FUNC0(aic32x4_mfp4));
	}

	/* MFP5 */
	if (aic32x4->setup->gpio_func[4] != AIC32X4_MFPX_DEFAULT_VALUE) {
		FUNC3(component, AIC32X4_GPIOCTL,
			  aic32x4->setup->gpio_func[4]);
		FUNC1(component, aic32x4_mfp5,
			FUNC0(aic32x4_mfp5));
	}
}