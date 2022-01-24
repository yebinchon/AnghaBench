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
struct snd_mpu401 {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDEX_MIDI_IN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_mpu401 *mpu)
{
	FUNC0(mpu->private_data);
	FUNC1(mpu->private_data, HDEX_MIDI_IN_START);
	return 0;
}