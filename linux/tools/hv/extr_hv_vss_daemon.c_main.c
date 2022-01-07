
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct option {char* member_0; char member_3; int member_2; int const member_1; } ;
struct TYPE_2__ {int operation; } ;
struct hv_vss_msg {int error; TYPE_1__ vss_hdr; } ;
typedef int kernel_modver ;
typedef int __u32 ;


 scalar_t__ EINVAL ;
 int EXIT_FAILURE ;
 int HV_E_FAIL ;
 int HV_S_OK ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_USER ;
 int O_RDWR ;
 int POLLIN ;


 int VSS_OP_REGISTER1 ;

 int close (int) ;
 scalar_t__ daemon (int,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int getpid () ;

 int open (char*,int ) ;
 int openlog (char*,int ,int ) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int print_usage (char**) ;
 int read (int,struct hv_vss_msg*,int) ;
 char* strerror (scalar_t__) ;
 int syslog (int ,char*,...) ;
 int vss_operate (int const) ;
 int write (int,struct hv_vss_msg*,int) ;

int main(int argc, char *argv[])
{
 int vss_fd, len;
 int error;
 struct pollfd pfd;
 int op;
 struct hv_vss_msg vss_msg[1];
 int daemonize = 1, long_index = 0, opt;
 int in_handshake = 1;
 __u32 kernel_modver;

 static struct option long_options[] = {
  {"help", 128, 0, 'h' },
  {"no-daemon", 128, 0, 'n' },
  {0, 0, 0, 0 }
 };

 while ((opt = getopt_long(argc, argv, "hn", long_options,
      &long_index)) != -1) {
  switch (opt) {
  case 'n':
   daemonize = 0;
   break;
  case 'h':
   print_usage(argv);
   exit(0);
  default:
   print_usage(argv);
   exit(EXIT_FAILURE);
  }
 }

 if (daemonize && daemon(1, 0))
  return 1;

 openlog("Hyper-V VSS", 0, LOG_USER);
 syslog(LOG_INFO, "VSS starting; pid is:%d", getpid());

 vss_fd = open("/dev/vmbus/hv_vss", O_RDWR);
 if (vss_fd < 0) {
  syslog(LOG_ERR, "open /dev/vmbus/hv_vss failed; error: %d %s",
         errno, strerror(errno));
  exit(EXIT_FAILURE);
 }



 vss_msg->vss_hdr.operation = VSS_OP_REGISTER1;

 len = write(vss_fd, vss_msg, sizeof(struct hv_vss_msg));
 if (len < 0) {
  syslog(LOG_ERR, "registration to kernel failed; error: %d %s",
         errno, strerror(errno));
  close(vss_fd);
  exit(EXIT_FAILURE);
 }

 pfd.fd = vss_fd;

 while (1) {
  pfd.events = POLLIN;
  pfd.revents = 0;

  if (poll(&pfd, 1, -1) < 0) {
   syslog(LOG_ERR, "poll failed; error:%d %s", errno, strerror(errno));
   if (errno == EINVAL) {
    close(vss_fd);
    exit(EXIT_FAILURE);
   }
   else
    continue;
  }

  len = read(vss_fd, vss_msg, sizeof(struct hv_vss_msg));

  if (in_handshake) {
   if (len != sizeof(kernel_modver)) {
    syslog(LOG_ERR, "invalid version negotiation");
    exit(EXIT_FAILURE);
   }
   kernel_modver = *(__u32 *)vss_msg;
   in_handshake = 0;
   syslog(LOG_INFO, "VSS: kernel module version: %d",
          kernel_modver);
   continue;
  }

  if (len != sizeof(struct hv_vss_msg)) {
   syslog(LOG_ERR, "read failed; error:%d %s",
          errno, strerror(errno));
   close(vss_fd);
   return EXIT_FAILURE;
  }

  op = vss_msg->vss_hdr.operation;
  error = HV_S_OK;

  switch (op) {
  case 131:
  case 129:
   error = vss_operate(op);
   syslog(LOG_INFO, "VSS: op=%s: %s\n",
    op == 131 ? "FREEZE" : "THAW",
    error ? "failed" : "succeeded");

   if (error) {
    error = HV_E_FAIL;
    syslog(LOG_ERR, "op=%d failed!", op);
    syslog(LOG_ERR, "report it with these files:");
    syslog(LOG_ERR, "/etc/fstab and /proc/mounts");
   }
   break;
  case 130:
   syslog(LOG_INFO, "VSS: op=CHECK HOT BACKUP\n");
   break;
  default:
   syslog(LOG_ERR, "Illegal op:%d\n", op);
  }
  vss_msg->error = error;
  len = write(vss_fd, vss_msg, sizeof(struct hv_vss_msg));
  if (len != sizeof(struct hv_vss_msg)) {
   syslog(LOG_ERR, "write failed; error: %d %s", errno,
          strerror(errno));

   if (op == 131)
    vss_operate(129);
  }
 }

 close(vss_fd);
 exit(0);
}
