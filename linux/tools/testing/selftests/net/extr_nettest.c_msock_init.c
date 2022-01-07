
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {TYPE_3__ in; } ;
struct TYPE_6__ {int s_addr; } ;
struct sock_args {int ifindex; TYPE_4__ local_addr; TYPE_2__ grp; scalar_t__ use_setsockopt; int dev; scalar_t__ has_local_ip; int port; } ;
typedef int one ;
typedef int laddr ;


 int AF_INET ;
 int INADDR_ANY ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ bind_to_device (int,int ) ;
 int close (int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int log_err_errno (char*) ;
 scalar_t__ set_membership (int,int ,int ,int ) ;
 scalar_t__ set_multicast_if (int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int msock_init(struct sock_args *args, int server)
{
 uint32_t if_addr = htonl(INADDR_ANY);
 struct sockaddr_in laddr = {
  .sin_family = AF_INET,
  .sin_port = htons(args->port),
 };
 int one = 1;
 int sd;

 if (!server && args->has_local_ip)
  if_addr = args->local_addr.in.s_addr;

 sd = socket(PF_INET, SOCK_DGRAM, 0);
 if (sd < 0) {
  log_err_errno("socket");
  return -1;
 }

 if (setsockopt(sd, SOL_SOCKET, SO_REUSEADDR,
         (char *)&one, sizeof(one)) < 0) {
  log_err_errno("Setting SO_REUSEADDR error");
  goto out_err;
 }

 if (setsockopt(sd, SOL_SOCKET, SO_BROADCAST,
         (char *)&one, sizeof(one)) < 0)
  log_err_errno("Setting SO_BROADCAST error");

 if (args->dev && bind_to_device(sd, args->dev) != 0)
  goto out_err;
 else if (args->use_setsockopt &&
   set_multicast_if(sd, args->ifindex))
  goto out_err;

 laddr.sin_addr.s_addr = if_addr;

 if (bind(sd, (struct sockaddr *) &laddr, sizeof(laddr)) < 0) {
  log_err_errno("bind failed");
  goto out_err;
 }

 if (server &&
     set_membership(sd, args->grp.s_addr,
      args->local_addr.in.s_addr, args->ifindex))
  goto out_err;

 return sd;
out_err:
 close(sd);
 return -1;
}
