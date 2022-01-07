
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int tx_av_chunks; } ;




 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int dccp_ackvec_parsed_add (int *,int*,int,int ) ;

__attribute__((used)) static int ccid2_hc_tx_parse_options(struct sock *sk, u8 packet_type,
         u8 option, u8 *optval, u8 optlen)
{
 struct ccid2_hc_tx_sock *hc = ccid2_hc_tx_sk(sk);

 switch (option) {
 case 129:
 case 128:
  return dccp_ackvec_parsed_add(&hc->tx_av_chunks, optval, optlen,
           option - 129);
 }
 return 0;
}
