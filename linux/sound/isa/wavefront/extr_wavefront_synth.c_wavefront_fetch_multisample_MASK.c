#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char NumberOfSamples; unsigned char* SampleNumber; } ;
struct TYPE_6__ {TYPE_1__ ms; } ;
struct TYPE_7__ {int number; TYPE_2__ hdr; } ;
typedef  TYPE_3__ wavefront_patch_info ;
typedef  int /*<<< orphan*/  snd_wavefront_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned char) ; 
 int EIO ; 
 int /*<<< orphan*/  WFC_UPLOAD_MULTISAMPLE ; 
 int /*<<< orphan*/  WF_DEBUG_DATA ; 
 unsigned char FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6 (snd_wavefront_t *dev, 
			     wavefront_patch_info *header)
{
	int i;
	unsigned char log_ns[1];
	unsigned char number[2];
	int num_samples;

	FUNC2 (header->number, number, 2);
    
	if (FUNC4 (dev, WFC_UPLOAD_MULTISAMPLE, log_ns, number)) {
		FUNC3 ("upload multisample failed.\n");
		return -EIO;
	}
    
	FUNC0 (WF_DEBUG_DATA, "msample %d has %d samples\n",
				header->number, log_ns[0]);

	header->hdr.ms.NumberOfSamples = log_ns[0];

	/* get the number of samples ... */

	num_samples = (1 << log_ns[0]);
    
	for (i = 0; i < num_samples; i++) {
		char d[2];
		int val;
	
		if ((val = FUNC5 (dev)) == -1) {
			FUNC3 ("upload multisample failed "
				    "during sample loop.\n");
			return -EIO;
		}
		d[0] = val;

		if ((val = FUNC5 (dev)) == -1) {
			FUNC3 ("upload multisample failed "
				    "during sample loop.\n");
			return -EIO;
		}
		d[1] = val;
	
		header->hdr.ms.SampleNumber[i] =
			FUNC1 ((unsigned char *) d, 2);
	
		FUNC0 (WF_DEBUG_DATA, "msample sample[%d] = %d\n",
					i, header->hdr.ms.SampleNumber[i]);
	}

	return (0);
}