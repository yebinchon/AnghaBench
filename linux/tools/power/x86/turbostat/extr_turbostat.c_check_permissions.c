
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __user_cap_header_struct {int version; int pid; } ;
struct __user_cap_data_struct {int effective; } ;
typedef struct __user_cap_header_struct* cap_user_header_t ;
typedef struct __user_cap_data_struct* cap_user_data_t ;


 int CAP_SYS_RAWIO ;
 int R_OK ;
 int _LINUX_CAPABILITY_VERSION ;
 int base_cpu ;
 int err (int,char*) ;
 scalar_t__ euidaccess (char*,int ) ;
 int exit (int) ;
 int getpid () ;
 scalar_t__ getuid () ;
 int progname ;
 int sprintf (char*,char*,int) ;
 int warn (char*) ;
 int warnx (char*,...) ;

void check_permissions()
{
 struct __user_cap_header_struct cap_header_data;
 cap_user_header_t cap_header = &cap_header_data;
 struct __user_cap_data_struct cap_data_data;
 cap_user_data_t cap_data = &cap_data_data;
 extern int capget(cap_user_header_t hdrp, cap_user_data_t datap);
 int do_exit = 0;
 char pathname[32];


 cap_header->pid = getpid();
 cap_header->version = _LINUX_CAPABILITY_VERSION;
 if (capget(cap_header, cap_data) < 0)
  err(-6, "capget(2) failed");

 if ((cap_data->effective & (1 << CAP_SYS_RAWIO)) == 0) {
  do_exit++;
  warnx("capget(CAP_SYS_RAWIO) failed,"
   " try \"# setcap cap_sys_rawio=ep %s\"", progname);
 }


 sprintf(pathname, "/dev/cpu/%d/msr", base_cpu);
 if (euidaccess(pathname, R_OK)) {
  do_exit++;
  warn("/dev/cpu/0/msr open failed, try chown or chmod +r /dev/cpu/*/msr");
 }


 if (do_exit)
  if (getuid() != 0)
   warnx("... or simply run as root");

 if (do_exit)
  exit(-6);
}
