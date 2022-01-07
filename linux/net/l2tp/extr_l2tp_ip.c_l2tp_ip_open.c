
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int inet_num; } ;


 int IPPROTO_L2TP ;
 TYPE_1__* inet_sk (struct sock*) ;
 int l2tp_ip_lock ;
 int l2tp_ip_table ;
 int sk_add_node (struct sock*,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int l2tp_ip_open(struct sock *sk)
{

 inet_sk(sk)->inet_num = IPPROTO_L2TP;

 write_lock_bh(&l2tp_ip_lock);
 sk_add_node(sk, &l2tp_ip_table);
 write_unlock_bh(&l2tp_ip_lock);

 return 0;
}
