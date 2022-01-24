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
struct vx_pipe {int dummy; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int EBADFD ; 
 int EIO ; 
 int MAX_WAIT_FOR_DSP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vx_core*,struct vx_pipe*) ; 
 int FUNC2 (struct vx_core*,struct vx_pipe*,int*) ; 
 int FUNC3 (struct vx_core*,struct vx_pipe*) ; 
 int FUNC4 (struct vx_core*) ; 

__attribute__((used)) static int FUNC5(struct vx_core *chip, struct vx_pipe *pipe, int state)
{
	int err, i, cur_state;

	/* Check the pipe is not already in the requested state */
	if (FUNC2(chip, pipe, &cur_state) < 0)
		return -EBADFD;
	if (state == cur_state)
		return 0;

	/* If a start is requested, ask the DSP to get prepared
	 * and wait for a positive acknowledge (when there are
	 * enough sound buffer for this pipe)
	 */
	if (state) {
		for (i = 0 ; i < MAX_WAIT_FOR_DSP; i++) {
			err = FUNC3(chip, pipe);
			if (err > 0)
				break;
			/* Wait for a few, before asking again
			 * to avoid flooding the DSP with our requests
			 */
			FUNC0(1);
		}
	}
    
	if ((err = FUNC1(chip, pipe)) < 0)
		return err;

	if ((err = FUNC4(chip)) < 0)
		return err;
    
	/* If it completes successfully, wait for the pipes
	 * reaching the expected state before returning
	 * Check one pipe only (since they are synchronous)
	 */
	for (i = 0; i < MAX_WAIT_FOR_DSP; i++) {
		err = FUNC2(chip, pipe, &cur_state);
		if (err < 0 || cur_state == state)
			break;
		err = -EIO;
		FUNC0(1);
	}
	return err < 0 ? -EIO : 0;
}