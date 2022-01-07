
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int dccps_gss; int dccps_awh; int dccps_iss; int dccps_awl; int dccps_l_seq_win; } ;


 int ADD48 (int ,int) ;
 int SUB48 (int ,int ) ;
 scalar_t__ before48 (int ,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static inline void dccp_update_gss(struct sock *sk, u64 seq)
{
 struct dccp_sock *dp = dccp_sk(sk);

 dp->dccps_gss = seq;

 dp->dccps_awl = SUB48(ADD48(dp->dccps_gss, 1), dp->dccps_l_seq_win);

 if (before48(dp->dccps_awl, dp->dccps_iss))
  dp->dccps_awl = dp->dccps_iss;
 dp->dccps_awh = dp->dccps_gss;
}
