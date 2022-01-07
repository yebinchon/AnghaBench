
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int EXIT_FAILURE ;
 int SOCK_STREAM ;
 int err (int ,char*) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 scalar_t__ use_pipes ;

__attribute__((used)) static void fdpair(int fds[2])
{
 if (use_pipes) {
  if (pipe(fds) == 0)
   return;
 } else {
  if (socketpair(AF_UNIX, SOCK_STREAM, 0, fds) == 0)
   return;
 }

 err(EXIT_FAILURE, use_pipes ? "pipe()" : "socketpair()");
}
