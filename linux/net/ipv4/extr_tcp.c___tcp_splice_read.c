
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_splice_state {int len; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {struct tcp_splice_state* data; } ;
struct TYPE_5__ {int count; TYPE_1__ arg; } ;
typedef TYPE_2__ read_descriptor_t ;


 int tcp_read_sock (struct sock*,TYPE_2__*,int ) ;
 int tcp_splice_data_recv ;

__attribute__((used)) static int __tcp_splice_read(struct sock *sk, struct tcp_splice_state *tss)
{

 read_descriptor_t rd_desc = {
  .arg.data = tss,
  .count = tss->len,
 };

 return tcp_read_sock(sk, &rd_desc, tcp_splice_data_recv);
}
