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
struct snd_soc_tplg_stream_caps_v4 {int /*<<< orphan*/  buffer_size_max; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  period_size_max; int /*<<< orphan*/  period_size_min; int /*<<< orphan*/  periods_max; int /*<<< orphan*/  periods_min; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  rate_max; int /*<<< orphan*/  rate_min; int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  name; } ;
struct snd_soc_tplg_stream_caps {int /*<<< orphan*/  buffer_size_max; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  period_size_max; int /*<<< orphan*/  period_size_min; int /*<<< orphan*/  periods_max; int /*<<< orphan*/  periods_min; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  rate_max; int /*<<< orphan*/  rate_min; int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  name; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_tplg_stream_caps *dest,
				struct snd_soc_tplg_stream_caps_v4 *src)
{
	dest->size = FUNC0(sizeof(*dest));
	FUNC1(dest->name, src->name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
	dest->formats = src->formats;
	dest->rates = src->rates;
	dest->rate_min = src->rate_min;
	dest->rate_max = src->rate_max;
	dest->channels_min = src->channels_min;
	dest->channels_max = src->channels_max;
	dest->periods_min = src->periods_min;
	dest->periods_max = src->periods_max;
	dest->period_size_min = src->period_size_min;
	dest->period_size_max = src->period_size_max;
	dest->buffer_size_min = src->buffer_size_min;
	dest->buffer_size_max = src->buffer_size_max;
}