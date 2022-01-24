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
struct echoaudio {int sample_rate; int /*<<< orphan*/  output_clock; int /*<<< orphan*/  input_clock; int /*<<< orphan*/  vmixer_gain; int /*<<< orphan*/  monitor_gain; int /*<<< orphan*/  input_gain; int /*<<< orphan*/  output_gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHOGAIN_MUTED ; 
 int /*<<< orphan*/  ECHO_CLOCK_INTERNAL ; 
 int /*<<< orphan*/  ECHO_CLOCK_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC2(struct echoaudio *chip)
{
	FUNC0(chip->output_gain, ECHOGAIN_MUTED, sizeof(chip->output_gain));
	FUNC0(chip->input_gain, ECHOGAIN_MUTED, sizeof(chip->input_gain));
	FUNC0(chip->monitor_gain, ECHOGAIN_MUTED, sizeof(chip->monitor_gain));
	FUNC0(chip->vmixer_gain, ECHOGAIN_MUTED, sizeof(chip->vmixer_gain));
	chip->input_clock = ECHO_CLOCK_INTERNAL;
	chip->output_clock = ECHO_CLOCK_WORD;
	chip->sample_rate = 44100;
	return FUNC1(chip);
}