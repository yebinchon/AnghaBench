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
struct xonar_pcm179x {int /*<<< orphan*/  current_rate; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*) ; 

__attribute__((used)) static void FUNC4(struct oxygen *chip,
			       struct snd_pcm_hw_params *params)
{
	struct xonar_pcm179x *data = chip->model_data;

	FUNC0(1);
	data->current_rate = FUNC1(params);
	FUNC3(chip);
	FUNC2(chip);
}