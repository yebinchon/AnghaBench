
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_hash; } ;
struct hlist_head {int dummy; } ;
struct atm_vcc {int vci; } ;


 int VCC_HTABLE_SIZE ;
 struct atm_vcc* atm_sk (struct sock*) ;
 int sk_add_node (struct sock*,struct hlist_head*) ;
 struct hlist_head* vcc_hash ;

__attribute__((used)) static void __vcc_insert_socket(struct sock *sk)
{
 struct atm_vcc *vcc = atm_sk(sk);
 struct hlist_head *head = &vcc_hash[vcc->vci & (VCC_HTABLE_SIZE - 1)];
 sk->sk_hash = vcc->vci & (VCC_HTABLE_SIZE - 1);
 sk_add_node(sk, head);
}
