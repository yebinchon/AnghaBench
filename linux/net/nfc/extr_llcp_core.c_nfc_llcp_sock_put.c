
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_sock {int sk; } ;


 int sock_put (int *) ;

__attribute__((used)) static void nfc_llcp_sock_put(struct nfc_llcp_sock *sock)
{
 sock_put(&sock->sk);
}
