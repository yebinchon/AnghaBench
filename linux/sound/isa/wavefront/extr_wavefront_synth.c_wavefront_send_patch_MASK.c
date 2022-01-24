#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  p; } ;
struct TYPE_8__ {size_t number; TYPE_1__ hdr; } ;
typedef  TYPE_2__ wavefront_patch_info ;
struct TYPE_9__ {int /*<<< orphan*/ * patch_status; } ;
typedef  TYPE_3__ snd_wavefront_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  WFC_DOWNLOAD_PATCH ; 
 int /*<<< orphan*/  WF_DEBUG_LOAD_PATCH ; 
 int /*<<< orphan*/  WF_PATCH_BYTES ; 
 int /*<<< orphan*/  WF_SLOT_FILLED ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static int
FUNC6 (snd_wavefront_t *dev, wavefront_patch_info *header)

{
	unsigned char buf[WF_PATCH_BYTES+2];
	unsigned char *bptr;

	FUNC1 (WF_DEBUG_LOAD_PATCH, "downloading patch %d\n",
				      header->number);

	if (header->number >= FUNC0(dev->patch_status))
		return -EINVAL;

	dev->patch_status[header->number] |= WF_SLOT_FILLED;

	bptr = FUNC3 (header->number, buf, 2);
	FUNC2 ((unsigned char *)&header->hdr.p, bptr, WF_PATCH_BYTES);
    
	if (FUNC5 (dev, WFC_DOWNLOAD_PATCH, NULL, buf)) {
		FUNC4 ("download patch failed\n");
		return -EIO;
	}

	return (0);
}