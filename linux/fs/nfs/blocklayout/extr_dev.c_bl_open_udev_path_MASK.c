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
struct TYPE_2__ {int /*<<< orphan*/  designator; int /*<<< orphan*/  designator_len; } ;
struct pnfs_block_volume {TYPE_1__ scsi; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 struct block_device* FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct block_device *
FUNC7(struct pnfs_block_volume *v)
{
	struct block_device *bdev;
	const char *devname;

	devname = FUNC4(GFP_KERNEL, "/dev/disk/by-id/wwn-0x%*phN",
				v->scsi.designator_len, v->scsi.designator);
	if (!devname)
		return FUNC0(-ENOMEM);

	bdev = FUNC3(devname, FMODE_READ | FMODE_WRITE, NULL);
	if (FUNC1(bdev)) {
		FUNC6("pNFS: failed to open device %s (%ld)\n",
			devname, FUNC2(bdev));
	}

	FUNC5(devname);
	return bdev;
}