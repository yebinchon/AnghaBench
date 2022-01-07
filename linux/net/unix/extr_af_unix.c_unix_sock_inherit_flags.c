
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int flags; } ;


 int SOCK_PASSCRED ;
 int SOCK_PASSSEC ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void unix_sock_inherit_flags(const struct socket *old,
        struct socket *new)
{
 if (test_bit(SOCK_PASSCRED, &old->flags))
  set_bit(SOCK_PASSCRED, &new->flags);
 if (test_bit(SOCK_PASSSEC, &old->flags))
  set_bit(SOCK_PASSSEC, &new->flags);
}
