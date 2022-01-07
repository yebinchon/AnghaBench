
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isst_if_mbox_cmds {int cmd_count; TYPE_1__* mbox_cmd; int member_0; } ;
struct TYPE_4__ {scalar_t__ mmio_supported; } ;
struct TYPE_3__ {unsigned int logical_cpu; unsigned char command; unsigned char sub_command; unsigned int parameter; unsigned int req_data; unsigned int resp_data; } ;


 unsigned int BIT (int ) ;




 unsigned char CONFIG_CLOS ;
 int ISST_IF_MBOX_COMMAND ;
 int MBOX_CMD_WRITE_BIT ;
 int O_RDWR ;
 int PM_CLOS_OFFSET ;
 int PM_QOS_CONFIG_OFFSET ;
 int PQR_ASSOC_OFFSET ;
 int close (int) ;
 int debug_printf (char*,unsigned int,...) ;
 int err (int,char*,char const*) ;
 int fprintf (int ,char*,unsigned int,unsigned char,unsigned char,unsigned int,unsigned int) ;
 int ioctl (int,int ,struct isst_if_mbox_cmds*) ;
 TYPE_2__ isst_platform_info ;
 int isst_send_mmio_command (unsigned int,int ,int,unsigned int*) ;
 int open (char const*,int ) ;
 int outf ;
 int perror (char*) ;

int isst_send_mbox_command(unsigned int cpu, unsigned char command,
      unsigned char sub_command, unsigned int parameter,
      unsigned int req_data, unsigned int *resp)
{
 const char *pathname = "/dev/isst_interface";
 int fd;
 struct isst_if_mbox_cmds mbox_cmds = { 0 };

 debug_printf(
  "mbox_send: cpu:%d command:%x sub_command:%x parameter:%x req_data:%x\n",
  cpu, command, sub_command, parameter, req_data);

 if (isst_platform_info.mmio_supported && command == CONFIG_CLOS) {
  unsigned int value;
  int write = 0;
  int clos_id, core_id, ret = 0;

  debug_printf("CPU %d\n", cpu);

  if (parameter & BIT(MBOX_CMD_WRITE_BIT)) {
   value = req_data;
   write = 1;
  }

  switch (sub_command) {
  case 129:
   core_id = parameter & 0xff;
   ret = isst_send_mmio_command(
    cpu, PQR_ASSOC_OFFSET + core_id * 4, write,
    &value);
   if (!ret && !write)
    *resp = value;
   break;
  case 131:
   clos_id = parameter & 0x03;
   ret = isst_send_mmio_command(
    cpu, PM_CLOS_OFFSET + clos_id * 4, write,
    &value);
   if (!ret && !write)
    *resp = value;
   break;
  case 130:
   ret = isst_send_mmio_command(cpu, PM_QOS_CONFIG_OFFSET,
           write, &value);
   if (!ret && !write)
    *resp = value;
   break;
  case 128:
   break;
  default:
   break;
  }
  return ret;
 }

 mbox_cmds.cmd_count = 1;
 mbox_cmds.mbox_cmd[0].logical_cpu = cpu;
 mbox_cmds.mbox_cmd[0].command = command;
 mbox_cmds.mbox_cmd[0].sub_command = sub_command;
 mbox_cmds.mbox_cmd[0].parameter = parameter;
 mbox_cmds.mbox_cmd[0].req_data = req_data;

 fd = open(pathname, O_RDWR);
 if (fd < 0)
  err(-1, "%s open failed", pathname);

 if (ioctl(fd, ISST_IF_MBOX_COMMAND, &mbox_cmds) == -1) {
  perror("ISST_IF_MBOX_COMMAND");
  fprintf(outf,
   "Error: mbox_cmd cpu:%d command:%x sub_command:%x parameter:%x req_data:%x\n",
   cpu, command, sub_command, parameter, req_data);
 } else {
  *resp = mbox_cmds.mbox_cmd[0].resp_data;
  debug_printf(
   "mbox_cmd response: cpu:%d command:%x sub_command:%x parameter:%x req_data:%x resp:%x\n",
   cpu, command, sub_command, parameter, req_data, *resp);
 }

 close(fd);

 return 0;
}
