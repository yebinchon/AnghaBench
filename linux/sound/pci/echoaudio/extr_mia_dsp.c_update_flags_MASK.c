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
struct echoaudio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_UPDATE_FLAGS ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip)
{
	if (FUNC2(chip))
		return -EIO;
	FUNC0(chip);
	return FUNC1(chip, DSP_VC_UPDATE_FLAGS);
}