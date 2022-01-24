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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum da7218_dmic_data_sel { ____Placeholder_da7218_dmic_data_sel } da7218_dmic_data_sel ;

/* Variables and functions */
 int DA7218_DMIC_DATA_LFALL_RRISE ; 
 int DA7218_DMIC_DATA_LRISE_RFALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum da7218_dmic_data_sel
	FUNC2(struct snd_soc_component *component, const char *str)
{
	if (!FUNC1(str, "lrise_rfall")) {
		return DA7218_DMIC_DATA_LRISE_RFALL;
	} else if (!FUNC1(str, "lfall_rrise")) {
		return DA7218_DMIC_DATA_LFALL_RRISE;
	} else {
		FUNC0(component->dev, "Invalid DMIC data type selection");
		return DA7218_DMIC_DATA_LRISE_RFALL;
	}
}