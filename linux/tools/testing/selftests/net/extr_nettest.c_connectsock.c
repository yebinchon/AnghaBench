
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_args {scalar_t__ type; scalar_t__ bind_test_only; int password; scalar_t__ has_local_ip; int version; int ifindex; scalar_t__ use_setsockopt; int dev; int protocol; } ;
typedef int socklen_t ;


 scalar_t__ EINPROGRESS ;
 int F_GETFL ;
 int F_SETFL ;
 long O_NONBLOCK ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ bind_socket (int,struct sock_args*) ;
 scalar_t__ bind_to_device (int,int ) ;
 int close (int) ;
 scalar_t__ connect (int,void*,int ) ;
 scalar_t__ errno ;
 long fcntl (int,int ,...) ;
 int log_err_errno (char*) ;
 scalar_t__ set_reuseport (int) ;
 scalar_t__ set_unicast_if (int,int ,int ) ;
 int socket (int ,scalar_t__,int ) ;
 scalar_t__ tcp_md5sig (int,void*,int ,int ) ;
 int wait_for_connect (int) ;

__attribute__((used)) static int connectsock(void *addr, socklen_t alen, struct sock_args *args)
{
 int sd, rc = -1;
 long flags;

 sd = socket(args->version, args->type, args->protocol);
 if (sd < 0) {
  log_err_errno("Failed to create socket");
  return -1;
 }

 flags = fcntl(sd, F_GETFL);
 if ((flags < 0) || (fcntl(sd, F_SETFL, flags|O_NONBLOCK) < 0)) {
  log_err_errno("Failed to set non-blocking option");
  goto err;
 }

 if (set_reuseport(sd) != 0)
  goto err;

 if (args->dev && bind_to_device(sd, args->dev) != 0)
  goto err;
 else if (args->use_setsockopt &&
   set_unicast_if(sd, args->ifindex, args->version))
  goto err;

 if (args->has_local_ip && bind_socket(sd, args))
  goto err;

 if (args->type != SOCK_STREAM)
  goto out;

 if (args->password && tcp_md5sig(sd, addr, alen, args->password))
  goto err;

 if (args->bind_test_only)
  goto out;

 if (connect(sd, addr, alen) < 0) {
  if (errno != EINPROGRESS) {
   log_err_errno("Failed to connect to remote host");
   rc = -1;
   goto err;
  }
  rc = wait_for_connect(sd);
  if (rc < 0)
   goto err;
 }
out:
 return sd;

err:
 close(sd);
 return rc;
}
