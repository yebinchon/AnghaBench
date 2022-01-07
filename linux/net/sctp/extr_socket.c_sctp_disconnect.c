
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int sctp_disconnect(struct sock *sk, int flags)
{
 return -EOPNOTSUPP;
}
