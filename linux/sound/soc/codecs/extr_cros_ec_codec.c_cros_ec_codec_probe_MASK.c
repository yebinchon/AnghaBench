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
struct cros_ec_codec_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mic_gain_control ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ *,int) ; 
 struct cros_ec_codec_data* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	int rc;

	struct cros_ec_codec_data *codec_data =
		FUNC2(component);

	rc = FUNC0(codec_data->dev);
	if (rc)
		return rc;

	return FUNC1(component, &mic_gain_control, 1);
}