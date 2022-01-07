
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; int sin6_scope_id; int sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_family; int sin_addr; void* sin_port; } ;
struct TYPE_2__ {int in6; int in; } ;
struct sock_args {int version; scalar_t__ type; scalar_t__ bind_test_only; scalar_t__ has_grp; int scope_id; TYPE_1__ remote_addr; int port; int grp; int has_remote_ip; } ;
typedef int sin6 ;
typedef int sin ;




 scalar_t__ SOCK_STREAM ;
 int close (int) ;
 int connectsock (void*,int,struct sock_args*) ;
 int fprintf (int ,char*) ;
 void* htons (int ) ;
 int msg_loop (int,int,void*,int,struct sock_args*) ;
 int msock_client (struct sock_args*) ;
 int show_sockstat (int,struct sock_args*) ;
 int stderr ;

__attribute__((used)) static int do_client(struct sock_args *args)
{
 struct sockaddr_in sin = {
  .sin_family = 129,
 };
 struct sockaddr_in6 sin6 = {
  .sin6_family = 128,
 };
 void *addr;
 int alen;
 int rc = 0;
 int sd;

 if (!args->has_remote_ip && !args->has_grp) {
  fprintf(stderr, "remote IP or multicast group not given\n");
  return 1;
 }

 switch (args->version) {
 case 129:
  sin.sin_port = htons(args->port);
  if (args->has_grp)
   sin.sin_addr = args->grp;
  else
   sin.sin_addr = args->remote_addr.in;
  addr = &sin;
  alen = sizeof(sin);
  break;
 case 128:
  sin6.sin6_port = htons(args->port);
  sin6.sin6_addr = args->remote_addr.in6;
  sin6.sin6_scope_id = args->scope_id;
  addr = &sin6;
  alen = sizeof(sin6);
  break;
 }

 if (args->has_grp)
  sd = msock_client(args);
 else
  sd = connectsock(addr, alen, args);

 if (sd < 0)
  return -sd;

 if (args->bind_test_only)
  goto out;

 if (args->type == SOCK_STREAM) {
  rc = show_sockstat(sd, args);
  if (rc != 0)
   goto out;
 }

 rc = msg_loop(1, sd, addr, alen, args);

out:
 close(sd);

 return rc;
}
