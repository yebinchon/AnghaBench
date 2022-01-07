
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int dccps_send_ndp_count; } ;


 TYPE_1__* dccp_sk (struct sock*) ;

__attribute__((used)) static int dccp_hdlr_ndp(struct sock *sk, u64 enable, bool rx)
{
 if (!rx)
  dccp_sk(sk)->dccps_send_ndp_count = (enable > 0);
 return 0;
}
