#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct echoaudio {int** vmixer_gain; TYPE_2__* card; TYPE_1__* comm_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int* vmixer; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t,int) ; 
 size_t FUNC1 (struct echoaudio*) ; 
 size_t FUNC2 (struct echoaudio*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u16 output, u16 pipe,
			   int gain)
{
	int index;

	if (FUNC3(pipe >= FUNC2(chip) ||
		       output >= FUNC1(chip)))
		return -EINVAL;

	if (FUNC4(chip))
		return -EIO;

	chip->vmixer_gain[output][pipe] = gain;
	index = output * FUNC2(chip) + pipe;
	chip->comm_page->vmixer[index] = gain;

	FUNC0(chip->card->dev,
		"set_vmixer_gain: pipe %d, out %d = %d\n", pipe, output, gain);
	return 0;
}