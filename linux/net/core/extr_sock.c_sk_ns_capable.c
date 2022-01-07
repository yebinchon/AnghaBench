
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int file; } ;


 scalar_t__ file_ns_capable (int ,struct user_namespace*,int) ;
 scalar_t__ ns_capable (struct user_namespace*,int) ;

bool sk_ns_capable(const struct sock *sk,
     struct user_namespace *user_ns, int cap)
{
 return file_ns_capable(sk->sk_socket->file, user_ns, cap) &&
  ns_capable(user_ns, cap);
}
