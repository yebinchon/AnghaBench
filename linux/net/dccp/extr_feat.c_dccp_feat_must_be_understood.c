
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DCCPF_CCID ;
 scalar_t__ DCCPF_SEQUENCE_WINDOW ;
 scalar_t__ DCCPF_SHORT_SEQNOS ;

__attribute__((used)) static inline int dccp_feat_must_be_understood(u8 feat_num)
{
 return feat_num == DCCPF_CCID || feat_num == DCCPF_SHORT_SEQNOS ||
  feat_num == DCCPF_SEQUENCE_WINDOW;
}
