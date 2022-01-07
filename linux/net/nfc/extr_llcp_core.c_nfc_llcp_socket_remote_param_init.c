
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_sock {scalar_t__ remote_miu; int remote_rw; } ;


 int LLCP_DEFAULT_RW ;
 scalar_t__ LLCP_MAX_MIU ;

void nfc_llcp_socket_remote_param_init(struct nfc_llcp_sock *sock)
{
 sock->remote_rw = LLCP_DEFAULT_RW;
 sock->remote_miu = LLCP_MAX_MIU + 1;
}
