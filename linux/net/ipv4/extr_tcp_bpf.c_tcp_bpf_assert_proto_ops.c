
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto {scalar_t__ recvmsg; scalar_t__ sendmsg; scalar_t__ sendpage; } ;


 int ENOTSUPP ;
 scalar_t__ tcp_recvmsg ;
 scalar_t__ tcp_sendmsg ;
 scalar_t__ tcp_sendpage ;

__attribute__((used)) static int tcp_bpf_assert_proto_ops(struct proto *ops)
{




 return ops->recvmsg == tcp_recvmsg &&
        ops->sendmsg == tcp_sendmsg &&
        ops->sendpage == tcp_sendpage ? 0 : -ENOTSUPP;
}
