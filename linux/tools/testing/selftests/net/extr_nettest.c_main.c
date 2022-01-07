
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_args {scalar_t__ type; unsigned short port; int has_local_ip; int has_remote_ip; unsigned int protocol; char* password; int use_setsockopt; int use_cmsg; char* dev; scalar_t__ ifindex; int has_grp; int bind_test_only; int has_expected_laddr; int has_expected_raddr; int expected_ifindex; int version; } ;
struct protoent {unsigned int p_proto; } ;


 int ADDR_TYPE_EXPECTED_LOCAL ;
 int ADDR_TYPE_EXPECTED_REMOTE ;
 int ADDR_TYPE_LOCAL ;
 int ADDR_TYPE_MCAST ;
 int ADDR_TYPE_REMOTE ;
 int AF_INET ;
 int AF_INET6 ;
 unsigned short DEFAULT_PORT ;
 int GETOPT_STR ;
 int INT_MAX ;
 unsigned int IPPROTO_TCP ;
 unsigned int IPPROTO_UDP ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ atoi (char*) ;
 int convert_addr (struct sock_args*,char*,int ) ;
 int do_client (struct sock_args*) ;
 int do_server (struct sock_args*) ;
 int fprintf (int ,char*) ;
 void* get_ifidx (char*) ;
 int getopt (int,char**,int ) ;
 struct protoent* getprotobyname (char*) ;
 int interactive ;
 scalar_t__ iter ;
 int log_error (char*) ;
 int * msg ;
 int print_usage (char*) ;
 unsigned int prog_timeout ;
 int quiet ;
 int * random_msg (scalar_t__) ;
 int server_mode ;
 int stderr ;
 int str_to_uint (char*,int,int,unsigned int*) ;

int main(int argc, char *argv[])
{
 struct sock_args args = {
  .version = AF_INET,
  .type = SOCK_STREAM,
  .port = DEFAULT_PORT,
 };
 struct protoent *pe;
 unsigned int tmp;
 int forever = 0;


 extern char *optarg;
 int rc = 0;





 while ((rc = getopt(argc, argv, GETOPT_STR)) != -1) {
  switch (rc) {
  case 's':
   server_mode = 1;
   break;
  case 'F':
   forever = 1;
   break;
  case 'l':
   args.has_local_ip = 1;
   if (convert_addr(&args, optarg, ADDR_TYPE_LOCAL) < 0)
    return 1;
   break;
  case 'r':
   args.has_remote_ip = 1;
   if (convert_addr(&args, optarg, ADDR_TYPE_REMOTE) < 0)
    return 1;
   break;
  case 'p':
   if (str_to_uint(optarg, 1, 65535, &tmp) != 0) {
    fprintf(stderr, "Invalid port\n");
    return 1;
   }
   args.port = (unsigned short) tmp;
   break;
  case 't':
   if (str_to_uint(optarg, 0, INT_MAX,
     &prog_timeout) != 0) {
    fprintf(stderr, "Invalid timeout\n");
    return 1;
   }
   break;
  case 'D':
   args.type = SOCK_DGRAM;
   break;
  case 'R':
   args.type = SOCK_RAW;
   args.port = 0;
   break;
  case 'P':
   pe = getprotobyname(optarg);
   if (pe) {
    args.protocol = pe->p_proto;
   } else {
    if (str_to_uint(optarg, 0, 0xffff, &tmp) != 0) {
     fprintf(stderr, "Invalid protocol\n");
     return 1;
    }
    args.protocol = tmp;
   }
   break;
  case 'n':
   iter = atoi(optarg);
   break;
  case 'L':
   msg = random_msg(atoi(optarg));
   break;
  case 'M':
   args.password = optarg;
   break;
  case 'S':
   args.use_setsockopt = 1;
   break;
  case 'C':
   args.use_cmsg = 1;
   break;
  case 'd':
   args.dev = optarg;
   args.ifindex = get_ifidx(optarg);
   if (args.ifindex < 0) {
    fprintf(stderr, "Invalid device name\n");
    return 1;
   }
   break;
  case 'i':
   interactive = 1;
   break;
  case 'g':
   args.has_grp = 1;
   if (convert_addr(&args, optarg, ADDR_TYPE_MCAST) < 0)
    return 1;
   args.type = SOCK_DGRAM;
   break;
  case '6':
   args.version = AF_INET6;
   break;
  case 'b':
   args.bind_test_only = 1;
   break;
  case '0':
   args.has_expected_laddr = 1;
   if (convert_addr(&args, optarg,
      ADDR_TYPE_EXPECTED_LOCAL))
    return 1;
   break;
  case '1':
   args.has_expected_raddr = 1;
   if (convert_addr(&args, optarg,
      ADDR_TYPE_EXPECTED_REMOTE))
    return 1;

   break;
  case '2':
   if (str_to_uint(optarg, 0, INT_MAX, &tmp) == 0) {
    args.expected_ifindex = (int)tmp;
   } else {
    args.expected_ifindex = get_ifidx(optarg);
    if (args.expected_ifindex < 0) {
     fprintf(stderr,
      "Invalid expected device\n");
     return 1;
    }
   }
   break;
  case 'q':
   quiet = 1;
   break;
  default:
   print_usage(argv[0]);
   return 1;
  }
 }

 if (args.password &&
     (!args.has_remote_ip || args.type != SOCK_STREAM)) {
  log_error("MD5 passwords apply to TCP only and require a remote ip for the password\n");
  return 1;
 }

 if ((args.use_setsockopt || args.use_cmsg) && !args.ifindex) {
  fprintf(stderr, "Device binding not specified\n");
  return 1;
 }
 if (args.use_setsockopt || args.use_cmsg)
  args.dev = ((void*)0);

 if (iter == 0) {
  fprintf(stderr, "Invalid number of messages to send\n");
  return 1;
 }

 if (args.type == SOCK_STREAM && !args.protocol)
  args.protocol = IPPROTO_TCP;
 if (args.type == SOCK_DGRAM && !args.protocol)
  args.protocol = IPPROTO_UDP;

 if ((args.type == SOCK_STREAM || args.type == SOCK_DGRAM) &&
      args.port == 0) {
  fprintf(stderr, "Invalid port number\n");
  return 1;
 }

 if (!server_mode && !args.has_grp &&
     !args.has_remote_ip && !args.has_local_ip) {
  fprintf(stderr,
   "Local (server mode) or remote IP (client IP) required\n");
  return 1;
 }

 if (interactive) {
  prog_timeout = 0;
  msg = ((void*)0);
 }

 if (server_mode) {
  do {
   rc = do_server(&args);
  } while (forever);

  return rc;
 }
 return do_client(&args);
}
