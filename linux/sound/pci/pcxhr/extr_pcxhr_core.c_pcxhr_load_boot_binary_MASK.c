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
struct TYPE_2__ {unsigned int addr; } ;
struct pcxhr_mgr {TYPE_1__ hostport; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCXHR_IT_DOWNLOAD_BOOT ; 
 unsigned int PCXHR_MBOX0_HF5 ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_mgr*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PCXHR_PLX_MBOX0 ; 
 int /*<<< orphan*/  PCXHR_PLX_MBOX1 ; 
 int /*<<< orphan*/  PCXHR_TIMEOUT_DSP ; 
 int FUNC2 (struct pcxhr_mgr*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (struct pcxhr_mgr*,struct firmware const*) ; 
 int FUNC4 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned int) ; 

int FUNC6(struct pcxhr_mgr *mgr, const struct firmware *boot)
{
	int err;
	unsigned int physaddr = mgr->hostport.addr;
	unsigned char dummy;

	/* send the hostport address to the DSP (only the upper 24 bit !) */
	if (FUNC5(physaddr & 0xff))
		return -EINVAL;
	FUNC1(mgr, PCXHR_PLX_MBOX1, (physaddr >> 8));

	err = FUNC4(mgr, PCXHR_IT_DOWNLOAD_BOOT, 0);
	if (err)
		return err;
	/* clear hf5 bit */
	FUNC1(mgr, PCXHR_PLX_MBOX0,
		    FUNC0(mgr, PCXHR_PLX_MBOX0) & ~PCXHR_MBOX0_HF5);

	err = FUNC3(mgr, boot);
	if (err)
		return err;
	/* wait for hf5 bit */
	return FUNC2(mgr, PCXHR_PLX_MBOX0, PCXHR_MBOX0_HF5,
				   PCXHR_MBOX0_HF5, PCXHR_TIMEOUT_DSP, &dummy);
}