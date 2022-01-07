
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_llc {scalar_t__ sllc_xid; scalar_t__ sllc_test; } ;
struct sock {scalar_t__ sk_type; } ;


 int LLC_PDU_LEN_I ;
 int LLC_PDU_LEN_U ;
 scalar_t__ SOCK_STREAM ;

__attribute__((used)) static inline u8 llc_ui_header_len(struct sock *sk, struct sockaddr_llc *addr)
{
 u8 rc = LLC_PDU_LEN_U;

 if (addr->sllc_test || addr->sllc_xid)
  rc = LLC_PDU_LEN_U;
 else if (sk->sk_type == SOCK_STREAM)
  rc = LLC_PDU_LEN_I;
 return rc;
}
