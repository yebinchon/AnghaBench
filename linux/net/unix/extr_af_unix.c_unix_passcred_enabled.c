
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int flags; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int SOCK_PASSCRED ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool unix_passcred_enabled(const struct socket *sock,
      const struct sock *other)
{
 return test_bit(SOCK_PASSCRED, &sock->flags) ||
        !other->sk_socket ||
        test_bit(SOCK_PASSCRED, &other->sk_socket->flags);
}
