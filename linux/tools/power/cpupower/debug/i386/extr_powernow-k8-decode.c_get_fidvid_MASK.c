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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int MCPU ; 
 int /*<<< orphan*/  MSR_FIDVID_STATUS ; 
 int MSR_S_HI_CURRENT_VID ; 
 int MSR_S_LO_CURRENT_FID ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(uint32_t cpu, uint32_t *fid, uint32_t *vid)
{
	int err = 1;
	uint64_t msr = 0;
	int fd;
	char file[20];

	if (cpu > MCPU)
		goto out;

	FUNC4(file, "/dev/cpu/%d/msr", cpu);

	fd = FUNC2(file, O_RDONLY);
	if (fd < 0)
		goto out;
	FUNC1(fd, MSR_FIDVID_STATUS, SEEK_CUR);
	if (FUNC3(fd, &msr, 8) != 8)
		goto err1;

	*fid = ((uint32_t )(msr & 0xffffffffull)) & MSR_S_LO_CURRENT_FID;
	*vid = ((uint32_t )(msr>>32 & 0xffffffffull)) & MSR_S_HI_CURRENT_VID;
	err = 0;
err1:
	FUNC0(fd);
out:
	return err;
}