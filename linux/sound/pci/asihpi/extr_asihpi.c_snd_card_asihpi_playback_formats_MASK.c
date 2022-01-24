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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct snd_card_asihpi {int /*<<< orphan*/  out_max_chans; int /*<<< orphan*/  h_mixer; } ;
struct hpi_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_CONTROL_SAMPLECLOCK ; 
 size_t HPI_FORMAT_PCM24_SIGNED ; 
 size_t HPI_FORMAT_PCM8_UNSIGNED ; 
 int /*<<< orphan*/  HPI_SOURCENODE_CLOCK_SOURCE ; 
 scalar_t__ INVALID_FORMAT ; 
 size_t FUNC0 (struct hpi_format*,int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC2 (int,struct hpi_format*) ; 
 size_t FUNC3 (int,int*) ; 
 scalar_t__* hpi_to_alsa_formats ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static u64 FUNC5(struct snd_card_asihpi *asihpi,
						u32 h_stream)
{
	struct hpi_format hpi_format;
	u16 format;
	u16 err;
	u32 h_control;
	u32 sample_rate = 48000;
	u64 formats = 0;

	/* on cards without SRC, must query at valid rate,
	* maybe set by external sync
	*/
	err = FUNC1(asihpi->h_mixer,
				  HPI_SOURCENODE_CLOCK_SOURCE, 0, 0, 0,
				  HPI_CONTROL_SAMPLECLOCK, &h_control);

	if (!err)
		err = FUNC3(h_control,
				&sample_rate);

	for (format = HPI_FORMAT_PCM8_UNSIGNED;
	     format <= HPI_FORMAT_PCM24_SIGNED; format++) {
		err = FUNC0(&hpi_format, asihpi->out_max_chans,
					format, sample_rate, 128000, 0);
		if (!err)
			err = FUNC2(h_stream, &hpi_format);
		if (!err && (hpi_to_alsa_formats[format] != INVALID_FORMAT))
			formats |= FUNC4(hpi_to_alsa_formats[format]);
	}
	return formats;
}