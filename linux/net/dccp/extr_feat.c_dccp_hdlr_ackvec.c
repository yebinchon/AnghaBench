
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int * dccps_hc_rx_ackvec; } ;


 int ENOMEM ;
 int * dccp_ackvec_alloc (int ) ;
 int dccp_ackvec_free (int *) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int gfp_any () ;

__attribute__((used)) static int dccp_hdlr_ackvec(struct sock *sk, u64 enable, bool rx)
{
 struct dccp_sock *dp = dccp_sk(sk);

 if (rx) {
  if (enable && dp->dccps_hc_rx_ackvec == ((void*)0)) {
   dp->dccps_hc_rx_ackvec = dccp_ackvec_alloc(gfp_any());
   if (dp->dccps_hc_rx_ackvec == ((void*)0))
    return -ENOMEM;
  } else if (!enable) {
   dccp_ackvec_free(dp->dccps_hc_rx_ackvec);
   dp->dccps_hc_rx_ackvec = ((void*)0);
  }
 }
 return 0;
}
