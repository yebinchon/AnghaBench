
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_args {scalar_t__ type; } ;


 scalar_t__ SOCK_STREAM ;
 int socket_read_dgram (int,struct sock_args*) ;
 int socket_read_stream (int) ;

__attribute__((used)) static int socket_read(int sd, struct sock_args *args)
{
 if (args->type == SOCK_STREAM)
  return socket_read_stream(sd);

 return socket_read_dgram(sd, args);
}
