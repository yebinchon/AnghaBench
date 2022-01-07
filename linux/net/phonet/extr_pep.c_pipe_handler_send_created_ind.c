
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct pep_sock {int rx_fc; int tx_fc; } ;


 int GFP_ATOMIC ;
 int PNS_PIPE_CREATED_IND ;
 int PN_PIPE_SB_NEGOTIATED_FC ;
 int pep_indicate (struct sock*,int ,int,int *,int,int ) ;
 int pep_sb_size (int) ;
 struct pep_sock* pep_sk (struct sock*) ;

__attribute__((used)) static int pipe_handler_send_created_ind(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);
 u8 data[4] = {
  PN_PIPE_SB_NEGOTIATED_FC, pep_sb_size(2),
  pn->tx_fc, pn->rx_fc,
 };

 return pep_indicate(sk, PNS_PIPE_CREATED_IND, 1 ,
    data, 4, GFP_ATOMIC);
}
