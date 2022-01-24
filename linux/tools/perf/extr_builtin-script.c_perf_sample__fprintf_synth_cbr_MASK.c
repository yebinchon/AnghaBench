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
struct perf_synth_intel_cbr {int cbr; int max_nonturbo; int /*<<< orphan*/  freq; } ;
struct perf_sample {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct perf_sample*,struct perf_synth_intel_cbr) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct perf_synth_intel_cbr* FUNC4 (struct perf_sample*) ; 

__attribute__((used)) static int FUNC5(struct perf_sample *sample, FILE *fp)
{
	struct perf_synth_intel_cbr *data = FUNC4(sample);
	unsigned int percent, freq;
	int len;

	if (FUNC2(sample, *data))
		return 0;

	freq = (FUNC1(data->freq) + 500) / 1000;
	len = FUNC0(fp, " cbr: %2u freq: %4u MHz ", data->cbr, freq);
	if (data->max_nonturbo) {
		percent = (5 + (1000 * data->cbr) / data->max_nonturbo) / 10;
		len += FUNC0(fp, "(%3u%%) ", percent);
	}
	return len + FUNC3(len, fp);
}