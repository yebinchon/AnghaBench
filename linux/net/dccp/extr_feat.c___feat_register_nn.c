
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct list_head {int dummy; } ;
struct TYPE_3__ {scalar_t__ nn; } ;
typedef TYPE_1__ dccp_feat_val ;


 int EINVAL ;
 scalar_t__ FEAT_NN ;
 scalar_t__ dccp_feat_default_value (int ) ;
 int dccp_feat_is_valid_nn_val (int ,scalar_t__) ;
 int dccp_feat_push_change (struct list_head*,int ,int,int ,TYPE_1__*) ;
 scalar_t__ dccp_feat_type (int ) ;

__attribute__((used)) static int __feat_register_nn(struct list_head *fn, u8 feat,
         u8 mandatory, u64 nn_val)
{
 dccp_feat_val fval = { .nn = nn_val };

 if (dccp_feat_type(feat) != FEAT_NN ||
     !dccp_feat_is_valid_nn_val(feat, nn_val))
  return -EINVAL;


 if (nn_val - (u64)dccp_feat_default_value(feat) == 0)
  return 0;

 return dccp_feat_push_change(fn, feat, 1, mandatory, &fval);
}
