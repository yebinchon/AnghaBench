
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isst_if_io_regs {int req_count; TYPE_1__* io_reg; } ;
struct TYPE_2__ {unsigned int logical_cpu; unsigned int reg; int read_write; unsigned int value; } ;


 int ISST_IF_IO_CMD ;
 int O_RDWR ;
 int close (int) ;
 int debug_printf (char*,unsigned int,unsigned int,int,...) ;
 int err (int,char*,char const*) ;
 int fprintf (int ,char*,unsigned int,unsigned int,int) ;
 int ioctl (int,int,struct isst_if_io_regs*) ;
 int open (char const*,int ) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static int isst_send_mmio_command(unsigned int cpu, unsigned int reg, int write,
      unsigned int *value)
{
 struct isst_if_io_regs io_regs;
 const char *pathname = "/dev/isst_interface";
 int cmd;
 int fd;

 debug_printf("mmio_cmd cpu:%d reg:%d write:%d\n", cpu, reg, write);

 fd = open(pathname, O_RDWR);
 if (fd < 0)
  err(-1, "%s open failed", pathname);

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

 if (ioctl(fd, cmd, &io_regs) == -1) {
  perror("ISST_IF_IO_CMD");
  fprintf(outf, "Error: mmio_cmd cpu:%d reg:%x read_write:%x\n",
   cpu, reg, write);
 } else {
  if (!write)
   *value = io_regs.io_reg[0].value;

  debug_printf(
   "mmio_cmd response: cpu:%d reg:%x rd_write:%x resp:%x\n",
   cpu, reg, write, *value);
 }

 close(fd);

 return 0;
}
