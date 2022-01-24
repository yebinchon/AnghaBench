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
struct q6afe_dai_data {int /*<<< orphan*/ ** port; } ;

/* Variables and functions */
 struct q6afe_dai_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct q6afe_dai_data *dai_data = FUNC0(dai->dev);

	FUNC1(dai_data->port[dai->id]);
	dai_data->port[dai->id] = NULL;

	return 0;
}