
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct sockaddr_nl {int nl_groups; scalar_t__ nl_pid; int nl_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct TYPE_2__ {int idx; int val; } ;
struct cn_msg {int seq; int ack; TYPE_1__ id; scalar_t__ len; } ;
typedef int on ;
typedef int buf ;
typedef int FILE ;


 int AF_NETLINK ;
 int CN_TEST_IDX ;
 int CN_TEST_VAL ;
 int EINTR ;
 int NETLINK_ADD_MEMBERSHIP ;
 int NETLINK_CONNECTOR ;
 scalar_t__ NLMSG_DATA (struct nlmsghdr*) ;


 int PF_NETLINK ;
 int POLLIN ;
 int SOCK_DGRAM ;
 int SOL_NETLINK ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 char* ctime (int *) ;
 int errno ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int getopt (int,char**,char*) ;
 int memset (char*,int ,int) ;
 int need_exit ;
 int netlink_send (int,struct cn_msg*) ;
 int optind ;
 int perror (char*) ;
 int poll (struct pollfd*,int,int) ;
 int recv (int,char*,int,int ) ;
 int seq ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int * stdout ;
 int strerror (int ) ;
 int time (int *) ;
 int ulog (char*,...) ;
 int usage () ;

int main(int argc, char *argv[])
{
 int s;
 char buf[1024];
 int len;
 struct nlmsghdr *reply;
 struct sockaddr_nl l_local;
 struct cn_msg *data;
 FILE *out;
 time_t tm;
 struct pollfd pfd;
 bool send_msgs = 0;

 while ((s = getopt(argc, argv, "hs")) != -1) {
  switch (s) {
  case 's':
   send_msgs = 1;
   break;

  case 'h':
   usage();
   return 0;

  default:

   usage();
   return 1;
  }
 }

 if (argc != optind) {
  out = fopen(argv[optind], "a+");
  if (!out) {
   ulog("Unable to open %s for writing: %s\n",
    argv[1], strerror(errno));
   out = stdout;
  }
 } else
  out = stdout;

 memset(buf, 0, sizeof(buf));

 s = socket(PF_NETLINK, SOCK_DGRAM, NETLINK_CONNECTOR);
 if (s == -1) {
  perror("socket");
  return -1;
 }

 l_local.nl_family = AF_NETLINK;
 l_local.nl_groups = -1;
 l_local.nl_pid = 0;

 ulog("subscribing to %u.%u\n", CN_TEST_IDX, CN_TEST_VAL);

 if (bind(s, (struct sockaddr *)&l_local, sizeof(struct sockaddr_nl)) == -1) {
  perror("bind");
  close(s);
  return -1;
 }







 if (send_msgs) {
  int i, j;

  memset(buf, 0, sizeof(buf));

  data = (struct cn_msg *)buf;

  data->id.idx = CN_TEST_IDX;
  data->id.val = CN_TEST_VAL;
  data->seq = seq++;
  data->ack = 0;
  data->len = 0;

  for (j=0; j<10; ++j) {
   for (i=0; i<1000; ++i) {
    len = netlink_send(s, data);
   }

   ulog("%d messages have been sent to %08x.%08x.\n", i, data->id.idx, data->id.val);
  }

  return 0;
 }


 pfd.fd = s;

 while (!need_exit) {
  pfd.events = POLLIN;
  pfd.revents = 0;
  switch (poll(&pfd, 1, -1)) {
   case 0:
    need_exit = 1;
    break;
   case -1:
    if (errno != EINTR) {
     need_exit = 1;
     break;
    }
    continue;
  }
  if (need_exit)
   break;

  memset(buf, 0, sizeof(buf));
  len = recv(s, buf, sizeof(buf), 0);
  if (len == -1) {
   perror("recv buf");
   close(s);
   return -1;
  }
  reply = (struct nlmsghdr *)buf;

  switch (reply->nlmsg_type) {
  case 128:
   fprintf(out, "Error message received.\n");
   fflush(out);
   break;
  case 129:
   data = (struct cn_msg *)NLMSG_DATA(reply);

   time(&tm);
   fprintf(out, "%.24s : [%x.%x] [%08u.%08u].\n",
    ctime(&tm), data->id.idx, data->id.val, data->seq, data->ack);
   fflush(out);
   break;
  default:
   break;
  }
 }

 close(s);
 return 0;
}
