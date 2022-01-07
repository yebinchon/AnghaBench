
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * inet_rcv_compat ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sock_diag_table_mutex ;

void sock_diag_unregister_inet_compat(int (*fn)(struct sk_buff *skb, struct nlmsghdr *nlh))
{
 mutex_lock(&sock_diag_table_mutex);
 inet_rcv_compat = ((void*)0);
 mutex_unlock(&sock_diag_table_mutex);
}
