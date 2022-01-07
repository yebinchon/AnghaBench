
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
typedef int dccp_feat_val ;


 int __dccp_feat_activate (struct sock*,int ,int,int const*) ;
 int dccp_feat_index (int ) ;

__attribute__((used)) static int dccp_feat_activate(struct sock *sk, u8 feat_num, bool local,
         dccp_feat_val const *fval)
{
 return __dccp_feat_activate(sk, dccp_feat_index(feat_num), local, fval);
}
