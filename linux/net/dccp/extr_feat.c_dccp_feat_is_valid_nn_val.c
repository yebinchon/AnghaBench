
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



 int DCCPF_ACK_RATIO_MAX ;

 int DCCPF_SEQ_WMAX ;
 int DCCPF_SEQ_WMIN ;

__attribute__((used)) static u8 dccp_feat_is_valid_nn_val(u8 feat_num, u64 val)
{
 switch (feat_num) {
 case 129:
  return val <= DCCPF_ACK_RATIO_MAX;
 case 128:
  return val >= DCCPF_SEQ_WMIN && val <= DCCPF_SEQ_WMAX;
 }
 return 0;
}
