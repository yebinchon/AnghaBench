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
struct snd_soc_dai {size_t id; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct q6afe_dai_data {int* is_port_started; int /*<<< orphan*/ * port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct q6afe_dai_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct q6afe_dai_data *dai_data = FUNC1(dai->dev);
	int rc;

	if (!dai_data->is_port_started[dai->id])
		return;

	rc = FUNC2(dai_data->port[dai->id]);
	if (rc < 0)
		FUNC0(dai->dev, "fail to close AFE port (%d)\n", rc);

	dai_data->is_port_started[dai->id] = false;

}