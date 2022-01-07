
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; int sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_family; int sin_addr; void* sin_port; } ;
struct TYPE_2__ {int in6; int in; } ;
struct sock_args {int version; int password; TYPE_1__ remote_addr; int port; } ;
typedef int sin6 ;
typedef int sin ;




 int exit (int) ;
 void* htons (int ) ;
 int log_error (char*) ;
 scalar_t__ tcp_md5sig (int,void*,int,int ) ;

__attribute__((used)) static int tcp_md5_remote(int sd, struct sock_args *args)
{
 struct sockaddr_in sin = {
  .sin_family = 129,
 };
 struct sockaddr_in6 sin6 = {
  .sin6_family = 128,
 };
 void *addr;
 int alen;

 switch (args->version) {
 case 129:
  sin.sin_port = htons(args->port);
  sin.sin_addr = args->remote_addr.in;
  addr = &sin;
  alen = sizeof(sin);
  break;
 case 128:
  sin6.sin6_port = htons(args->port);
  sin6.sin6_addr = args->remote_addr.in6;
  addr = &sin6;
  alen = sizeof(sin6);
  break;
 default:
  log_error("unknown address family\n");
  exit(1);
 }

 if (tcp_md5sig(sd, addr, alen, args->password))
  return -1;

 return 0;
}
