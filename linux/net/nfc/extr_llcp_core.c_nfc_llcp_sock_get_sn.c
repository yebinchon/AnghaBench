
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_llcp_sock {int sk; } ;
struct nfc_llcp_local {int dummy; } ;


 struct nfc_llcp_sock* nfc_llcp_sock_from_sn (struct nfc_llcp_local*,int *,size_t) ;
 int sock_hold (int *) ;

__attribute__((used)) static struct nfc_llcp_sock *nfc_llcp_sock_get_sn(struct nfc_llcp_local *local,
        u8 *sn, size_t sn_len)
{
 struct nfc_llcp_sock *llcp_sock;

 llcp_sock = nfc_llcp_sock_from_sn(local, sn, sn_len);

 if (llcp_sock == ((void*)0))
  return ((void*)0);

 sock_hold(&llcp_sock->sk);

 return llcp_sock;
}
