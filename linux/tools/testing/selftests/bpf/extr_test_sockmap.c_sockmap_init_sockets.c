
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int one ;
typedef int addr ;


 int AF_INET ;
 int EINPROGRESS ;
 int FIONBIO ;
 int S1_PORT ;
 int S2_PORT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ accept (int,int *,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int c1 ;
 int c2 ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 void* htons (int ) ;
 int inet_addr (char*) ;
 int ioctl (int,int ,char*) ;
 int listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ p1 ;
 scalar_t__ p2 ;
 int perror (char*) ;
 int printf (char*,...) ;
 int s1 ;
 int s2 ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int sockmap_init_sockets(int verbose)
{
 int i, err, one = 1;
 struct sockaddr_in addr;
 int *fds[4] = {&s1, &s2, &c1, &c2};

 s1 = s2 = p1 = p2 = c1 = c2 = 0;


 for (i = 0; i < 4; i++) {
  *fds[i] = socket(AF_INET, SOCK_STREAM, 0);
  if (*fds[i] < 0) {
   perror("socket s1 failed()");
   return errno;
  }
 }


 for (i = 0; i < 2; i++) {
  err = setsockopt(*fds[i], SOL_SOCKET, SO_REUSEADDR,
     (char *)&one, sizeof(one));
  if (err) {
   perror("setsockopt failed()");
   return errno;
  }
 }


 for (i = 0; i < 2; i++) {
  err = ioctl(*fds[i], FIONBIO, (char *)&one);
  if (err < 0) {
   perror("ioctl s1 failed()");
   return errno;
  }
 }


 memset(&addr, 0, sizeof(struct sockaddr_in));
 addr.sin_family = AF_INET;
 addr.sin_addr.s_addr = inet_addr("127.0.0.1");

 addr.sin_port = htons(S1_PORT);
 err = bind(s1, (struct sockaddr *)&addr, sizeof(addr));
 if (err < 0) {
  perror("bind s1 failed()\n");
  return errno;
 }

 addr.sin_port = htons(S2_PORT);
 err = bind(s2, (struct sockaddr *)&addr, sizeof(addr));
 if (err < 0) {
  perror("bind s2 failed()\n");
  return errno;
 }


 addr.sin_port = htons(S1_PORT);
 err = listen(s1, 32);
 if (err < 0) {
  perror("listen s1 failed()\n");
  return errno;
 }

 addr.sin_port = htons(S2_PORT);
 err = listen(s2, 32);
 if (err < 0) {
  perror("listen s1 failed()\n");
  return errno;
 }


 addr.sin_port = htons(S1_PORT);
 err = connect(c1, (struct sockaddr *)&addr, sizeof(addr));
 if (err < 0 && errno != EINPROGRESS) {
  perror("connect c1 failed()\n");
  return errno;
 }

 addr.sin_port = htons(S2_PORT);
 err = connect(c2, (struct sockaddr *)&addr, sizeof(addr));
 if (err < 0 && errno != EINPROGRESS) {
  perror("connect c2 failed()\n");
  return errno;
 } else if (err < 0) {
  err = 0;
 }


 p1 = accept(s1, ((void*)0), ((void*)0));
 if (p1 < 0) {
  perror("accept s1 failed()\n");
  return errno;
 }

 p2 = accept(s2, ((void*)0), ((void*)0));
 if (p2 < 0) {
  perror("accept s1 failed()\n");
  return errno;
 }

 if (verbose) {
  printf("connected sockets: c1 <-> p1, c2 <-> p2\n");
  printf("cgroups binding: c1(%i) <-> s1(%i) - - - c2(%i) <-> s2(%i)\n",
   c1, s1, c2, s2);
 }
 return 0;
}
