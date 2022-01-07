
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; int sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_family; int sin_addr; void* sin_port; } ;
struct TYPE_2__ {int in6; int in; } ;
struct sock_args {scalar_t__ type; int version; TYPE_1__ local_addr; int port; int has_local_ip; } ;
typedef int socklen_t ;
typedef int serv_addr ;
typedef int serv6_addr ;




 scalar_t__ SOCK_RAW ;
 scalar_t__ bind (int,void*,int) ;
 void* htons (int ) ;
 int log_err_errno (char*) ;
 int log_error (char*) ;

__attribute__((used)) static int bind_socket(int sd, struct sock_args *args)
{
 struct sockaddr_in serv_addr = {
  .sin_family = 129,
 };
 struct sockaddr_in6 serv6_addr = {
  .sin6_family = 128,
 };
 void *addr;
 socklen_t alen;

 if (!args->has_local_ip && args->type == SOCK_RAW)
  return 0;

 switch (args->version) {
 case 129:
  serv_addr.sin_port = htons(args->port);
  serv_addr.sin_addr = args->local_addr.in;
  addr = &serv_addr;
  alen = sizeof(serv_addr);
  break;

 case 128:
  serv6_addr.sin6_port = htons(args->port);
  serv6_addr.sin6_addr = args->local_addr.in6;
  addr = &serv6_addr;
  alen = sizeof(serv6_addr);
  break;

 default:
  log_error("Invalid address family\n");
  return -1;
 }

 if (bind(sd, addr, alen) < 0) {
  log_err_errno("error binding socket");
  return -1;
 }

 return 0;
}
