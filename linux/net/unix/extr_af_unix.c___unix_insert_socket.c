
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;


 int WARN_ON (int) ;
 int sk_add_node (struct sock*,struct hlist_head*) ;
 int sk_unhashed (struct sock*) ;

__attribute__((used)) static void __unix_insert_socket(struct hlist_head *list, struct sock *sk)
{
 WARN_ON(!sk_unhashed(sk));
 sk_add_node(sk, list);
}
