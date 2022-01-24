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
typedef  int /*<<< orphan*/  u16 ;
struct firmware {scalar_t__ data; } ;
struct echoaudio {int /*<<< orphan*/  dsp_code_to_load; int /*<<< orphan*/ * dsp_code; int /*<<< orphan*/  comm_page; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*,struct echoaudio*) ; 
 int FUNC2 (struct firmware const**,struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip)
{
	const struct firmware *fw;
	int box_type, err;

	if (FUNC5(!chip->comm_page))
		return -EPERM;

	/* See if the ASIC is present and working - only if the DSP is already loaded */
	if (chip->dsp_code) {
		if ((box_type = FUNC0(chip)) >= 0)
			return box_type;
		/* ASIC check failed; force the DSP to reload */
		chip->dsp_code = NULL;
	}

	err = FUNC2(&fw, chip, chip->dsp_code_to_load);
	if (err < 0)
		return err;
	err = FUNC4(chip, (u16 *)fw->data);
	FUNC1(fw, chip);
	if (err < 0)
		return err;

	if ((box_type = FUNC3(chip)) < 0)
		return box_type;	/* error */

	return box_type;
}