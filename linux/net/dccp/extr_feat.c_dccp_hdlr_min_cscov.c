
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_pcslen; scalar_t__ dccps_pcrlen; } ;


 int DCCP_WARN (char*,scalar_t__,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static int dccp_hdlr_min_cscov(struct sock *sk, u64 cscov, bool rx)
{
 struct dccp_sock *dp = dccp_sk(sk);

 if (rx)
  dp->dccps_pcrlen = cscov;
 else {
  if (dp->dccps_pcslen == 0)
   dp->dccps_pcslen = cscov;
  else if (cscov > dp->dccps_pcslen)
   DCCP_WARN("CsCov %u too small, peer requires >= %u\n",
      dp->dccps_pcslen, (u8)cscov);
 }
 return 0;
}
