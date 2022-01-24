#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcxhr_rmh {int dummy; } ;
struct pcxhr_mgr {TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_PIPE ; 
 int PCXHR_PIPE_STATE_CAPTURE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_rmh*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcxhr_mgr*,struct pcxhr_rmh*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcxhr_rmh*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pcxhr_mgr *mgr, int audio_mask)
{
	struct pcxhr_rmh rmh;
	int err;
	int audio = 0;

	while (audio_mask) {
		if (audio_mask & 1) {
			FUNC1(&rmh, CMD_STOP_PIPE);
			if (audio < PCXHR_PIPE_STATE_CAPTURE_OFFSET) {
				/* stop playback pipe */
				FUNC3(&rmh, 0, audio, 0, 0);
			} else {
				/* stop capture pipe */
				FUNC3(&rmh, 1, audio -
						PCXHR_PIPE_STATE_CAPTURE_OFFSET,
						0, 0);
			}
			err = FUNC2(mgr, &rmh);
			if (err) {
				FUNC0(&mgr->pci->dev,
					   "error pipe stop "
					   "(CMD_STOP_PIPE) err=%x!\n", err);
				return err;
			}
		}
		audio_mask>>=1;
		audio++;
	}
	return 0;
}