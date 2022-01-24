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
struct isst_if_io_regs {int req_count; TYPE_1__* io_reg; } ;
struct TYPE_2__ {unsigned int logical_cpu; unsigned int reg; int read_write; unsigned int value; } ;

/* Variables and functions */
 int ISST_IF_IO_CMD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int) ; 
 int FUNC4 (int,int,struct isst_if_io_regs*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu, unsigned int reg, int write,
				  unsigned int *value)
{
	struct isst_if_io_regs io_regs;
	const char *pathname = "/dev/isst_interface";
	int cmd;
	int fd;

	FUNC1("mmio_cmd cpu:%d reg:%d write:%d\n", cpu, reg, write);

	fd = FUNC5(pathname, O_RDWR);
	if (fd < 0)
		FUNC2(-1, "%s open failed", pathname);

	io_regs.req_count = 1;
	io_regs.io_reg[0].logical_cpu = cpu;
	io_regs.io_reg[0].reg = reg;
	cmd = ISST_IF_IO_CMD;
	if (write) {
		io_regs.io_reg[0].read_write = 1;
		io_regs.io_reg[0].value = *value;
	} else {
		io_regs.io_reg[0].read_write = 0;
	}

	if (FUNC4(fd, cmd, &io_regs) == -1) {
		FUNC6("ISST_IF_IO_CMD");
		FUNC3(outf, "Error: mmio_cmd cpu:%d reg:%x read_write:%x\n",
			cpu, reg, write);
	} else {
		if (!write)
			*value = io_regs.io_reg[0].value;

		FUNC1(
			"mmio_cmd response: cpu:%d reg:%x rd_write:%x resp:%x\n",
			cpu, reg, write, *value);
	}

	FUNC0(fd);

	return 0;
}